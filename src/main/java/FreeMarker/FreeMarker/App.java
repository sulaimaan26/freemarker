package FreeMarker.FreeMarker;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;
import freemarker.template.Version;

/**
 * Hello world!
 *
 */
public class App {
	public static void main(String[] args) {
		try {
			/* 1.Create Hash Map */
			Map<String, Object> input = new HashMap<String, Object>();
			input.put("title", "Vogella example");
			input.put("date", "26/12/1995");

			/* 2.Create a list for you template object class as datatype */
			List<Data> systems = new ArrayList<Data>();

			// 3. Adding required data into list where Data class object will be stored
			systems.add(new Data("name", "values", 1, "value", "value", "value"));
			systems.add(new Data("name", "values", 1, "value", "value", "value"));

			// 4. Add this list to the Map Object input
			input.put("systems", systems);

			// 5. Create Template Configuration Object
			Configuration templateconfig = new Configuration(Configuration.VERSION_2_3_29);

			// 6. Template configs Where do we load the templates from:

			File template_path = new File("./files/");
			System.out.println(template_path.getAbsolutePath());
			templateconfig.setDirectoryForTemplateLoading(template_path);
			// Some other recommended settings:
			templateconfig.setIncompatibleImprovements(new Version(2, 3, 29));
			templateconfig.setDefaultEncoding("UTF-8");
			templateconfig.setLocale(Locale.US);
			templateconfig.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);

			Template template = templateconfig.getTemplate("template.ftl");

			Writer filewriter = new FileWriter(new File("Custom_Report.html"));

			template.process(input, filewriter);
			System.out.println("Report Generated successfully");
			filewriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (TemplateException e) {
			e.printStackTrace();
		}

	}
}
