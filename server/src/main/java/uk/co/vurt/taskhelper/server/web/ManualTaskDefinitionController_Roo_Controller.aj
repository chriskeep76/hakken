// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package uk.co.vurt.taskhelper.server.web;

import java.io.UnsupportedEncodingException;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;
import uk.co.vurt.taskhelper.server.domain.definition.ManualTaskDefinition;

privileged aspect ManualTaskDefinitionController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public java.lang.String ManualTaskDefinitionController.create(@Valid ManualTaskDefinition manualTaskDefinition, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("manualTaskDefinition", manualTaskDefinition);
            return "manualtaskdefinitions/create";
        }
        uiModel.asMap().clear();
        manualTaskDefinition.persist();
        return "redirect:/manualtaskdefinitions/" + encodeUrlPathSegment(manualTaskDefinition.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public java.lang.String ManualTaskDefinitionController.createForm(Model uiModel) {
        uiModel.addAttribute("manualTaskDefinition", new ManualTaskDefinition());
        return "manualtaskdefinitions/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public java.lang.String ManualTaskDefinitionController.show(@PathVariable("id") java.lang.Long id, Model uiModel) {
        uiModel.addAttribute("manualtaskdefinition", ManualTaskDefinition.findManualTaskDefinition(id));
        uiModel.addAttribute("itemId", id);
        return "manualtaskdefinitions/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public java.lang.String ManualTaskDefinitionController.list(@RequestParam(value = "page", required = false) java.lang.Integer page, @RequestParam(value = "size", required = false) java.lang.Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("manualtaskdefinitions", ManualTaskDefinition.findManualTaskDefinitionEntries(firstResult, sizeNo));
            float nrOfPages = (float) ManualTaskDefinition.countManualTaskDefinitions() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("manualtaskdefinitions", ManualTaskDefinition.findAllManualTaskDefinitions());
        }
        return "manualtaskdefinitions/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public java.lang.String ManualTaskDefinitionController.update(@Valid ManualTaskDefinition manualTaskDefinition, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("manualTaskDefinition", manualTaskDefinition);
            return "manualtaskdefinitions/update";
        }
        uiModel.asMap().clear();
        manualTaskDefinition.merge();
        return "redirect:/manualtaskdefinitions/" + encodeUrlPathSegment(manualTaskDefinition.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public java.lang.String ManualTaskDefinitionController.updateForm(@PathVariable("id") java.lang.Long id, Model uiModel) {
        uiModel.addAttribute("manualTaskDefinition", ManualTaskDefinition.findManualTaskDefinition(id));
        return "manualtaskdefinitions/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public java.lang.String ManualTaskDefinitionController.delete(@PathVariable("id") java.lang.Long id, @RequestParam(value = "page", required = false) java.lang.Integer page, @RequestParam(value = "size", required = false) java.lang.Integer size, Model uiModel) {
        ManualTaskDefinition manualTaskDefinition = ManualTaskDefinition.findManualTaskDefinition(id);
        manualTaskDefinition.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/manualtaskdefinitions";
    }
    
    @ModelAttribute("manualtaskdefinitions")
    public Collection<ManualTaskDefinition> ManualTaskDefinitionController.populateManualTaskDefinitions() {
        return ManualTaskDefinition.findAllManualTaskDefinitions();
    }
    
    java.lang.String ManualTaskDefinitionController.encodeUrlPathSegment(java.lang.String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
