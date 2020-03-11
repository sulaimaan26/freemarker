package FreeMarker.FreeMarker;

/**
 * Data
 */
public class Data {      
    private Object sample_name;
    private Object sampler_count;
    private Object error_count; 
    private Object minresponse; 
    private Object maxresponse;   
    private Object url;
    

    public Data(Object sample_name, Object sampler_count, Object error_count, Object minresponse, Object maxresponse, Object url) {
        this.sample_name = sample_name;
        this.sampler_count = sampler_count;
        this.error_count = error_count;
        this.minresponse = minresponse;
        this.maxresponse = maxresponse;
        this.url = url;
    }
    

    public Object getError_count() {
        //this.error_count=(String)this.json_op.get(0)[0];
        return this.error_count;
    }

    public void setError_count(Object error_count) {
        this.error_count = error_count;
    }

    public Object getSample_name() {
        return this.sample_name;
    }

    public void setSample_name(Object sample_name) {
        this.sample_name = sample_name;
    }

    public Object getUrl() {
        return this.url;
    }

    public void setUrl(Object url) {
        this.url = url;
    }

    public Object getSampler_count() {
        return this.sampler_count;
    }

    public void setSampler_count(Object sampler_count) {
        this.sampler_count = sampler_count;
    }

    public Object getMinresponse() {
        return this.minresponse;
    }

    public void setMinresponse(Object minresponse) {
        this.minresponse = minresponse;
    }

    public Object getMaxresponse() {
        return this.maxresponse;
    }

    public void setMaxresponse(Object maxresponse) {
        this.maxresponse = maxresponse;
    }


}