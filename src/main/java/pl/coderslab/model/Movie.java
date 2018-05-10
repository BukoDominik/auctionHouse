package pl.coderslab.model;

import org.json.JSONArray;
import org.json.JSONObject;

public class Movie {
    private String overview;
    private String orginalTitle;
    private String date;
    private String posterURL;

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    public String getOrginalTitle() {
        return orginalTitle;
    }

    public void setOrginalTitle(String orginalTitle) {
        this.orginalTitle = orginalTitle;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getPosterURL() {
        return posterURL;
    }

    public void setPosterURL(String posterURL) {
        this.posterURL = posterURL;
    }

    public Movie(JSONObject jsonArr) {
        this.overview = jsonArr.getString("overview");
        this.orginalTitle = jsonArr.getString("original_title");
        this.date = jsonArr.getString("release_date");
        try {
            this.posterURL = jsonArr.getString("poster_path");
        } catch (Exception e){
            this.posterURL = null;
        }

    }
}
