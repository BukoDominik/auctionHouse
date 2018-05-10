package pl.coderslab.controllers;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.model.JsonReader;
import pl.coderslab.model.Movie;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import static pl.coderslab.model.JsonReader.readJsonFromUrl;

@Controller
public class searchController {
    @GetMapping("/search")
    public String useSearch(){
    return "searchForm";
    }
    @PostMapping("/search")
    public String postSearch(){
        return "redirect:result";
    }
    @GetMapping("/result")
    public String seeResults(){
    return "";
    }

    @GetMapping("/movieSearch")
    public String useMovieSearch(){
        return "searchMovie";
    }
    @PostMapping("/movieSearch")
    public String postMovieSearch(HttpServletRequest request , Model model){
        String title = request.getParameter("filmName");
        System.out.println(title);
        model.addAttribute("filmName", title);
        String search = "https://api.themoviedb.org/3/search/movie?api_key=e5a1519d5698fa84e5d68ffd08f3a883&language=pl&query="+title;
        try {
            ArrayList<Movie> movieList = new ArrayList<Movie>();
            JSONObject json = readJsonFromUrl(search);
            System.out.println(json.toString());
            JSONArray jsonResult = json.getJSONArray("results");
            for (Object item : jsonResult) {
                JSONObject jsonItem = (JSONObject)item;
                System.out.println(jsonItem.toString());
                System.out.println(jsonItem.getString("title"));
                Movie currentMovie = new Movie(jsonItem);
                movieList.add(currentMovie);
            }
            model.addAttribute("movies", movieList);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return "resultMovie";
    }
}
