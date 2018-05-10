package pl.coderslab.model;

import org.json.JSONArray;
import org.json.JSONObject;

import javax.persistence.*;

@Entity
@Table(name = "movies")
public class Movie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    long id;
    private String overview;
    private String orginalTitle;
    private String date;
    private String posterURL;
    private Boolean watched;
    private Boolean toWatch;

    public Movie() {
    }

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", overview='" + overview + '\'' +
                ", orginalTitle='" + orginalTitle + '\'' +
                ", date='" + date + '\'' +
                ", posterURL='" + posterURL + '\'' +
                ", watched=" + watched +
                ", toWatch=" + toWatch +
                '}';
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Boolean getWatched() {
        return watched;
    }

    public void setWatched(Boolean watched) {
        this.watched = watched;
    }

    public Boolean getToWatch() {
        return toWatch;
    }

    public void setToWatch(Boolean toWatch) {
        this.toWatch = toWatch;
    }

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
