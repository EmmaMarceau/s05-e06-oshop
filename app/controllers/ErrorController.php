<?php

class ErrorController
{
    public function page404()
    {
        http_response_code(404);
        $this->show('404');
    }

    private function show($viewName, $viewVars = [])
    {
        include __DIR__ . '/../views/header.tpl.php';
        // inclusion de vues
        include __DIR__ . '/../views/' . $viewName . '.tpl.php';
        include __DIR__ . '/../views/footer.tpl.php';
    }
}
