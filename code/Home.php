<?php
class Home extends Page {
    static $db = array(
        'plotis' => 'Text'
    );
    static $has_one = array(
        'img' => 'Image',
    );
     
    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', new TextField('plotis', 'Teksto lauko plotis px(pvz 200px)'), 'Content');
        $fields->addFieldToTab("Root.Main", new UploadField('img'));
         
        return $fields;
    }
}
class Home_Controller extends Page_Controller {
}