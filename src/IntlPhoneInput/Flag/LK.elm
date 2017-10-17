module IntlPhoneInput.Flag.LK exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#ffb700", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ d "M26.667 240l88-213.333h88v426.666h-88z", fill "#ff5b00" ]
            []
        , Svg.path [ fill "#005641", d "M26.667 26.667h88v426.666h-88z" ]
            []
        , Svg.path [ fill "#8d2029", d "M229.333 26.667H616v426.666H229.332z" ]
            []
        , Svg.path [ id "a", d "M579.253 408.565s3.626 7.382 7.632 10.39c5.935 4.456 18.104 4.134 23.27 9.333 6.187 6.13-.482 14.23-.426 14.933l.338 4.28s-4.173.05-5.93.323c-2.642.412-3.672 2.562-8.59 2.243-12.37-.803-11.87-11.945-12.57-21.467-.62-3.627-2.058-8.354-2.875-11.98-.7-3.107-.85-8.055-.85-8.055z", fill "#ffb700", stroke "#000", strokeWidth "1.134" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#a", transform "matrix(-1 0 0 1 845.333 0)" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#a", transform "matrix(1 0 0 -1 0 480)" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#a", transform "rotate(180 422.667 240)" ]
            []
        , g [ transform "translate(0 -76)" ]
            [ use [ xlinkHref "#b", width "100%", height "100%", stroke "#000", strokeWidth "5.56" ]
                []
            , g [ id "b", fill "#ffb700" ]
                [ Svg.path [ d "M363.488 415.765l2.325-1.342.995 1.345c1.325 1.79 4.99 1.77 7.424-.04l1.86-1.387 1.558 1.387c2.048 1.822 5.873 1.824 8.315.006 1.71-1.274 1.95-1.3 3.08-.33.673.577 2.65 1.235 4.392 1.46 3.138.408 3.185.386 5.02-2.368 1.538-2.306 1.78-3.24 1.412-5.477a59.406 59.406 0 0 1-.583-5.304c-.14-2.597-.125-2.613 3.658-3.93 2.09-.728 4.508-1.703 5.374-2.17 1.51-.81 5.675-5.705 5.675-6.67 0-.255-1.627-.647-3.616-.87-7.912-.887-9.25-5.135-4.11-13.025 8.388-12.87 13.45-25.4 13.483-33.384.015-3.57.218-4.767.677-3.99 1.874 3.17-1.483 16.467-6.57 26.015l-2.046 3.846 1.954-.45c1.074-.247 7.392-2.913 14.04-5.924 18.194-8.24 24.444-9.855 36.22-9.36 9.864.416 14.065 2.344 21.03 9.65 3.69 3.87 7.245 6.638 13.747 10.708 13.853 8.672 14.43 9.423 15.09 19.62.667 10.333.335 10.893-7.48 12.62-6.68 1.475-10.866 4.59-11.99 8.915-.6 2.31.663 2.377 4.03.213l2.468-1.586 1.098 1.586c1.443 2.085 4.51 2.094 7.057.02L511 413.98l1.967 1.567c3.055 2.435 7.118 1.844 8.265-1.2.22-.586.808-.4 2 .636 2.232 1.94 7.954 2.772 8.57 1.247.237-.582-.21-2.02-.994-3.194-3.33-4.992-4.37-7.372-4.414-10.09-.06-3.78 1.067-5.602 5.366-8.676 5.222-3.734 6.835-8.55 2.864-8.55-2.452 0-4.923-2.168-6.5-5.7-3.204-7.18-2.576-15.228 2.233-28.617 4.885-13.6 5.427-16.108 5.446-25.203.016-7.354-.17-8.626-1.842-12.658-1.022-2.465-3.098-6.136-4.612-8.157l-2.753-3.675 3.534-2.928c10.79-8.94 8.583-23.572-4.407-29.21-3.975-1.725-4.968-1.877-11.932-1.83-4.177.028-10.55.578-14.157 1.222-3.68.656-9.907 1.184-14.18 1.2-6.785.028-7.937-.14-10.553-1.53-2.727-1.453-3.195-2.142-3.728-5.497-.11-.69-.592-1.378-1.072-1.53-.927-.29-5.21 3.426-5.844 5.073-.312.813-.567.757-1.483-.327-.61-.72-1.458-2.373-1.888-3.674-1.08-3.273.247-5.726 4.093-7.564l2.984-1.426-1.76-1.092c-3.63-2.253-9.805-.712-12.038 3.005-.632 1.052-1.32 1.914-1.53 1.916-.21 0-1.412-1.002-2.67-2.23-4.687-4.58-3.075-11.358 3.196-13.428 3.344-1.103 6.303-.26 6.918 1.968.94 3.405 3.862-1.07 3.338-5.11-.348-2.688-.296-2.78 1.563-2.78 2.584 0 8.087 3.392 9.79 6.036 1.976 3.07 1.832 7.906-.343 11.51l-1.708 2.83 2.233-.448c3.276-.657 6.46-2.69 8.07-5.16 1.702-2.608 1.885-7.687.376-10.428-1.464-2.657-1.297-3.078.866-2.18 3.68 1.526 5.645 3.21 7.12 6.096 1.33 2.6 1.403 3.244.684 5.95-.444 1.67-1.43 3.864-2.194 4.88-1.188 1.58-1.23 1.844-.282 1.844 1.762 0 5.443-1.668 6.75-3.06.66-.703 1.624-2.434 2.14-3.847l.94-2.57 1.078 1.96c1.526 2.768 4.492 5.26 8.11 6.81 3.89 1.668 5.508 1.762 3.474.202-1.37-1.052-3.9-8.47-3.133-9.194.45-.426 5.732 3.638 11.762 9.05 5.704 5.12 9.288 6.8 14.527 6.8 6.692 0 10.59-5.827 7.58-11.335-1.753-3.212-5.66-3.658-7.944-.908-1.05 1.265-1.34 2.27-1.03 3.598.376 1.625.23 1.84-1.252 1.84-1.945 0-5.78-2.487-12.59-8.17-10.384-8.665-23.002-16.01-32.114-18.693-5.847-1.722-18.337-2.394-24.28-1.306-6.434 1.177-14.043 4.858-18.19 8.8-7.344 6.982-7.46 16.275-.31 24.738l2.05 2.424-1.387 2.154c-2.018 3.134-1.845 7.352.428 10.46 1.002 1.367 2.012 2.486 2.245 2.485.233 0 .49-.88.568-1.955.2-2.718 1.368-4.54 3.37-5.26 1.804-.65 2.97-.343 11.227 2.953 8.688 3.468 22.975 3.706 38.166.637 7.447-1.504 16.228-1.416 20.092.203 7.082 2.967 8.724 10.686 3.517 16.545-2.254 2.536-4.428 3.57-11.725 5.572-5.553 1.524-6.868 1.625-19.49 1.5-10.782-.11-14.658.1-19.06 1.018-4.778.997-7.717 1.098-21.754.744l-16.23-.41 1.8 1.49c.99.82 2.39 1.83 3.11 2.243 1.223.702 1.182.797-.637 1.47-1.07.398-3.443.722-5.274.722h-3.33l-.45 2.83c-.245 1.555-.227 3.372.042 4.037.398.98.25 1.12-.783.745-.702-.254-2.652-.755-4.335-1.112-1.684-.358-3.95-1.085-5.036-1.617-1.828-.895-2.03-.87-2.704.32-.6 1.063-6.24 5.26-7.068 5.26-.134 0-.306-.808-.383-1.798-.078-.99-.89-3.564-1.81-5.723-.916-2.158-1.874-4.513-2.127-5.232-.383-1.086-.556-1.14-1.017-.327-.304.54-.75 2.01-.99 3.27-.24 1.26-1.09 3.304-1.89 4.545l-1.452 2.256-.926-1.93c-.995-2.07-2.646-4.217-3.244-4.217-.202 0-.546.662-.764 1.472-.456 1.69-4.372 6.376-5.328 6.376-.352 0-.64-1.325-.64-2.944 0-1.618-.31-2.943-.69-2.943-.38 0-.692.418-.692.93 0 1.245-3.344 4.956-4.466 4.956-.49 0-1.277.44-1.75.98-1.232 1.408-2.24 1.21-1.723-.337.243-.726.085-2.418-.35-3.76-.437-1.345-.9-2.775-1.03-3.18-.166-.508-1.365-.373-3.9.44-4.1 1.315-5.474 1.082-3.366-.57.77-.602 1.942-2.693 2.604-4.645.662-1.95 1.64-3.683 2.17-3.848.745-.23.706.055-.172 1.242-.627.846-1.142 1.99-1.144 2.54 0 .548-.474 1.85-1.048 2.894-.574 1.042-.935 2-.802 2.125s1.692-.468 3.465-1.318l3.224-1.545.013 1.382c.007.76.396 2.766.863 4.458l.85 3.075 2.194-1.008c2.243-1.03 4.367-4.706 4.367-7.555 0-1.408.807-1.192 1.137.305.098.44.604 2.088 1.126 3.664l.95 2.864 1.502-1.81c.826-.994 1.862-2.946 2.302-4.336.763-2.413 1.962-3.45 1.962-1.698 0 1.263 3.447 5.792 4.11 5.403.323-.188.963-1.888 1.423-3.778.96-3.93 2.505-6.602 3.487-6.028.37.217.513.636.32.933-.194.296.6 2.85 1.763 5.678a2557.7 2557.7 0 0 1 2.597 6.323c.425 1.048.81.896 3.304-1.307 1.553-1.37 2.962-2.906 3.132-3.41.256-.764.602-.736 2.054.165 2.03 1.26 8.856 3.29 9.383 2.79.198-.187.4-1.98.45-3.984l.09-3.643 1.964.408c1.078.224 3.348.21 5.043-.03l3.082-.44-2.746-1.883c-1.512-1.036-3.04-2.377-3.395-2.98-.38-.642-1.724-1.187-3.247-1.316-4.114-.35-11.407-4.44-11.407-6.4 0-.367 1.01.258 2.246 1.39 2.738 2.51 6.543 4.085 9.866 4.085h2.486l-1.538-2.045c-.883-1.175-1.676-3.405-1.862-5.24-.296-2.922-.605-3.387-3.657-5.508-1.833-1.275-4.104-3.186-5.046-4.246l-1.713-1.928-.873 2.29c-.48 1.258-1.068 2.288-1.305 2.288-.238 0-1.162-.736-2.054-1.635-.892-.898-1.8-1.63-2.02-1.627-.218.004-1.01 1.216-1.756 2.692l-1.358 2.685-1.05-1.547c-.578-.85-1.942-2.357-3.03-3.346-1.09-.99-1.664-1.8-1.274-1.8.39 0 1.733 1.03 2.988 2.29l2.28 2.29.93-1.677c.55-.995.756-2.525.507-3.76-.364-1.804-.313-1.91.378-.777.44.72 1.774 2.1 2.965 3.065l2.167 1.757 1.494-2.738c1.487-2.725 1.498-2.73 2.174-1.103.906 2.176 7.456 7.546 13.033 10.684.86.483.498-1.18-1.09-5.004-.42-1.012-.764-2.838-.764-4.057 0-1.808-.522-2.612-2.834-4.372-3.34-2.54-4.42-4.347-5.048-8.445-.255-1.66-.84-3.507-1.298-4.103-.682-.886-.794-.39-.612 2.69.123 2.078-.147 4.66-.6 5.74l-.824 1.96-.637-1.634c-.35-.9-1.898-2.463-3.44-3.475-1.543-1.013-2.626-2.01-2.407-2.218.22-.208 1.807.714 3.527 2.05 2.622 2.034 3.2 2.254 3.562 1.358.426-1.053 0-5.633-.825-8.834-.41-1.598-.375-1.59 1.597.382 1.454 1.454 2.258 3.188 2.88 6.213.792 3.843 1.192 4.483 4.746 7.604 2.134 1.874 3.99 3.302 4.127 3.173.136-.13.405-4.976.6-10.773.37-11.115-.05-13.76-2.727-17.194l-1.375-1.764 2.162-2.333c2.82-3.042 4.116-5.48 4.678-8.808l.457-2.706-2.44 2.31c-1.998 1.892-2.953 2.31-5.267 2.31-2.29 0-3.186-.383-4.73-2.03-1.853-1.973-5.136-3.873-8.293-4.797-1.167-.342-1.554-.193-1.554.596 0 .577-.645 2.246-1.432 3.708l-1.43 2.657-3-2.964c-1.84-1.818-4.024-3.233-5.648-3.66-4.15-1.092-4.375-.983-4.375 2.108 0 4.69-2.002 5.564-5.606 2.447-2.747-2.377-5.025-2.893-10.235-2.32l-4.023.442.723 1.816c.605 1.517.468 2.156-.827 3.88-2.1 2.793-4.833 4.004-9.04 4.004-1.936 0-4.36.4-5.386.89-1.025.49-3.574 1.055-5.663 1.255-2.09.2-4.316.557-4.948.793-.99.37-1.1.065-.78-2.186.487-3.445-1.92-5.986-5.67-5.986-4.863 0-7.107 4.352-5.202 10.092a44.633 44.633 0 0 1 1.066 3.872c.228 1.063 2.42 3.884 5.103 6.57 2.587 2.588 5.033 5.282 5.434 5.985.402.703 1.73 1.832 2.95 2.51l2.22 1.228-.294-2.373c-.322-2.61.247-3.02 1.635-1.177.498.658 1.758 1.722 2.803 2.364 1.646 1.012 1.9 1.032 1.9.154 0-.558.335-1.842.745-2.855l.745-1.84 1.293 2.504c.712 1.378 3.025 4.51 5.14 6.96 4.107 4.752 6.61 10.063 5.318 11.286-.524.496-1.94.457-4.874-.132-2.274-.456-5.087-.698-6.25-.536-2.38.33-2.566.023-1.104-1.807 1.543-1.932 1.298-2.25-1.734-2.25-3.507 0-12.213-1.682-15.556-3.005-3.25-1.286-4-.965-4.956 2.117-.43 1.386-1.22 3.9-1.752 5.585l-.97 3.064 3.518-.34c1.933-.186 4.42-.61 5.527-.94 1.106-.332 2.112-.508 2.234-.392.123.116-.37 1.313-1.096 2.66l-1.317 2.45 2.192-.447c1.206-.245 3.02-.847 4.03-1.336 1.76-.85 1.903-.79 3.29 1.44 1.708 2.74 3.073 2.626 3.376-.28.315-3.004 1.303-2.56 3.162 1.42 1.787 3.83 3.647 5.18 4.004 2.91.12-.752 1.082-1.978 2.14-2.724 2.14-1.508 3.754-1.055 4.678 1.312.958 2.45-1.177 4.977-7.388 8.742-12.44 7.54-19.672 17.856-21.737 31.002-1.863 11.857 3.953 24.11 15.62 32.91 5.584 4.212 14.454 8.657 13.89 6.96-2.394-7.2-2.315-20.945.133-23.263.368-.348.242 1.086-.28 3.186-1.944 7.825-1.1 14.06 3.883 28.673 4.507 13.217 3.883 18.866-2.495 22.6-2.048 1.2-3.367 1.396-8.876 1.33-5.977-.073-6.628.047-8.547 1.576-1.86 1.482-4.272 6.35-4.272 8.62 0 1.23 1.366 1.068 4.05-.482z" ]
                    []
                , Svg.path [ d "M460.507 415.5l2.507-1.613 1.7 1.612c2.23 2.11 4.842 2.063 6.985-.128.934-.955 1.774-1.617 1.865-1.47.09.145.508.853.927 1.573.53.91 1.62 1.37 3.585 1.507 2.37.167 3.005-.062 3.946-1.422l1.122-1.622 2.468 1.586c6.757 4.343 10.358-.213 7.338-9.286-1.534-4.613-.69-7.206 4.26-13.078 2.086-2.476 3.795-5.118 3.797-5.872 0-1.202-.386-1.363-3.164-1.308-2.657.053-3.435-.233-4.834-1.773-2.276-2.505-2.14-5.373.402-8.557l2.032-2.543-3.605-2.446c-1.984-1.345-5.56-4.528-7.947-7.074-5.362-5.717-10.634-8.428-17.587-9.042l-4.66-.413.006 3.53c.01 4.542 2.14 8.912 7.96 16.313 6.615 8.416 7.077 9.72 7.345 20.718l.227 9.304-1.915 1.816c-1.73 1.64-2.51 1.85-8.093 2.173-5.314.306-6.43.58-7.99 1.962-2.07 1.835-2.69 2.833-3.33 5.367-.373 1.476-.222 1.798.844 1.798.715 0 2.427-.725 3.806-1.61zm-142.203-24.044c.59-.8 1.075-2.09 1.075-2.87 0-1.175.525-1.49 3.11-1.856l3.11-.442-2.075-1.653c-2.464-1.963-2.692-3.497-.52-3.5 2.163 0 5.827-2.247 6.383-3.91.26-.77.096-1.804-.368-2.333-1.213-1.384-3.492-1.176-3.916.358-.455 1.65-1.217 1.653-2.945.016-2.6-2.46-2.658-7.556-.122-10.523 1.196-1.4 1.185-1.49-.34-2.934-1.64-1.554-2.81-4.628-2.04-5.357.246-.232 1.54-.047 2.88.41 1.9.652 2.652.662 3.435.046 2.373-1.866-.198-4.265-4.003-3.736-1.532.213-2.165 0-2.385-.794-.166-.603-1.506-1.39-3.015-1.77-2.697-.683-2.716-.674-2.716 1.184 0 2.036-1.162 2.42-3.37 1.114-1.796-1.062-3.536-.238-3.536 1.674 0 1.783 1.793 2.662 5.007 2.455 2.465-.16 2.556 1.674.215 4.31l-1.683 1.894 1.333 1.917c1.976 2.838 1.81 7.55-.348 9.892l-1.692 1.834-1.11-1.472c-1.542-2.045-3.652-1.908-4.23.275-.38 1.43-.066 2.083 1.724 3.598 1.203 1.018 2.96 1.85 3.902 1.85 2.336 0 2.244 1.837-.183 3.692l-1.9 1.452 2.936.454c1.613.25 2.934.72 2.934 1.047 0 1.248 2.034 5.13 2.688 5.13.378 0 1.17-.656 1.762-1.455z" ]
                    []
                , Svg.path [ d "M356.523 374.89c2.666-1.05 8.438-5.937 8.438-7.145 0-.38-1.592-2.132-3.54-3.893-4.097-3.707-8.554-9.95-9.708-13.6-.602-1.904-3.512-5.162-11.707-13.11L329.1 326.563l-3.144.796c-1.73.438-3.838.807-4.687.82-1.465.022-1.438.106.507 1.612l2.053 1.59 2.878-1.6c2.79-1.547 2.89-1.556 3.233-.31.202.73-.232 1.993-1.004 2.922-.747.9-1.173 1.92-.946 2.27.227.347-.49 1.074-1.596 1.615-2.048 1.002-3.47 4.304-1.853 4.304 1.454 0 4.66-3.956 4.29-5.294-.188-.685-.097-1.39.204-1.566 1.25-.73 1.17 2.375-.098 3.902-.747.9-1.173 1.92-.946 2.27.227.347-.49 1.075-1.596 1.616-2.035.996-3.47 4.304-1.87 4.304 1.572 0 4.725-3.78 4.335-5.194-.206-.74-.127-1.49.174-1.666.84-.492 1.295 1.96.585 3.16-.38.645-.378 1.523.008 2.22.698 1.262-.01 3.685-1.297 4.44-.55.322-.177.955 1.16 1.966 1.938 1.463 1.975 1.616 1.975 8.07 0 5.392.218 6.784 1.21 7.723 1.11 1.054 1.208 1.057 1.208.047 0-1.103 1.937-2.452 3.52-2.452.47 0 3.39 2.475 6.49 5.5 3.12 3.043 6.386 5.632 7.31 5.797.92.164 1.915.338 2.212.387.297.05 1.695-.366 3.107-.923zM323.18 348.8c0-1.74-3.588-3.594-7.877-4.075-3.463-.39-3.52-.367-3.52 1.363 0 1.432.545 1.995 2.935 3.036 3.842 1.673 8.46 1.496 8.46-.324z" ]
                    []
                , Svg.path [ d "M327.11 348.64c1.75-1.587 2.577-3.475 1.525-3.475-1.21 0-4.423 2.883-4.423 3.97 0 1.694.597 1.592 2.897-.495zm-3.73-5.14c.15-.982-.457-1.637-2.276-2.458-3.923-1.772-8.613-2.593-9.743-1.705-2.08 1.636-.693 3.83 2.67 4.226 1.353.16 3.19.572 4.078.918 2.585 1.004 5.042.547 5.273-.98zm0-5.255c.213-1.4-.682-1.9-7.987-4.47-5.453-1.92-7.868-1.015-6.125 2.296.607 1.154 1.626 1.68 3.912 2.023 1.7.255 4.022.752 5.162 1.106 3.044.944 4.803.61 5.04-.955zm3.66-4.922c1.102-1.118 2.004-2.436 2.004-2.93 0-1.604-4.353 1.233-4.908 3.198-.665 2.357.414 2.258 2.904-.267zm-3.66-.331c.242-1.594-2.41-3.033-7.622-4.14-3.825-.812-5.512-.35-5.225 1.426.156.97 1.43 1.68 5.043 2.807 5.783 1.804 7.522 1.784 7.805-.093zm5.1-7.419c6.68-2.973 7.258-10.472.96-12.44-2.617-.818-4.286-.377-5.287 1.394-.767 1.357-.254 3.823.794 3.823.355 0 .644.457.644 1.014 0 2.604-10.198 3.784-14.38 1.664-1.47-.745-2.11-2.678-.886-2.678.914 0 1.546-1.97 1.08-3.363-.638-1.898-2.55-2.556-5.326-1.83-6.26 1.637-6.085 8.994.29 12.116 5.227 2.56 16.686 2.716 22.112.3z" ]
                    []
                , Svg.path [ d "M324.325 319.808c.387-.366.22-.93-.43-1.44-1.42-1.115-1.344-2.775.214-4.676 1.17-1.427 1.315-3.563 1.717-25.106.694-37.126 3.455-65.05 7.094-71.75 1.45-2.666 1.246-2.677-2.497-.13-4.823 3.28-8.494 7.554-11.747 13.67-6.142 11.547-8.277 27.083-8.277 60.245 0 18.83.128 21.294 1.2 23.064 1.02 1.68 1.073 2.302.357 4.098-.464 1.164-.674 2.276-.467 2.472 1.37 1.3 11.36.954 12.835-.443zm56.123-35.403c.21-.32-.253-1.94-1.027-3.597-1.207-2.585-1.693-3.014-3.413-3.014-5.387 0-14.048-2.408-22.977-6.388-5.156-2.298-6.937-2.826-7.556-2.24-1.577 1.494 1.045 5.04 5.105 6.904 3.6 1.654 13.67 3.686 18.265 3.686 2.665 0 2.728.12 1.21 2.312l-1.114 1.612 3.015.078c1.658.042 3.947.302 5.087.576 2.96.714 2.987.714 3.407.072z" ]
                    []
                , Svg.path [ d "M411.92 301.136c0-.96-2.818-3.56-5.674-5.236-2.242-1.316-2.613-1.356-2.618-.282-.007 1.63-1.456 5.723-2.025 5.723-.32 0-.795-.8-1.055-1.777-.26-.978-1.346-2.905-2.415-4.282l-1.945-2.503-1.514 2.32c-1.412 2.163-3.857 4.282-4.942 4.282-.26 0-.31-1.14-.113-2.533.213-1.513.048-2.713-.412-2.982-.423-.247-.77-.16-.77.192 0 .815-3.395 4.668-4.114 4.668-.296 0-.71-1.104-.92-2.453-.21-1.35-.57-3.483-.796-4.742-.227-1.26.257-.405 1.075 1.897l1.487 4.187 1.63-2.552c.898-1.403 1.633-2.936 1.635-3.407 0-.47.305-.68.674-.464.368.217.88 1.904 1.14 3.75l.47 3.356 1.794-1.968c.987-1.082 2.144-2.53 2.57-3.22.762-1.228.805-1.227 2.32.057.847.72 2.15 2.44 2.897 3.824.747 1.383 1.457 2.413 1.58 2.29.12-.126.394-1.553.606-3.172.212-1.618.4-3.003.42-3.076.106-.4 5.406 3.043 7.367 4.788 1.26 1.12 2.457 1.88 2.66 1.69.203-.192.368-1.847.368-3.676 0-2.836-.3-3.596-2.034-5.146-1.994-1.783-2.05-1.793-2.786-.49-.957 1.694-2.085 1.718-2.085.046 0-1.22-3.768-5.91-4.75-5.91-.253 0-1.046 1.03-1.762 2.29s-1.486 2.288-1.71 2.287c-.968-.005-6.28-5.928-6.278-6.997 0-.85.358-.633 1.29.787.707 1.08 2.12 2.69 3.14 3.58 2.066 1.802 2.817 1.364 3.614-2.11.227-.988.62-1.797.876-1.797.884 0 5.508 4.912 6.16 6.54l.652 1.636.495-1.8c.604-2.2 1.272-2.28 2.237-.274.404.838 2.396 2.58 4.428 3.873l3.693 2.35.743-2.364c.407-1.3.948-2.047 1.2-1.66.376.577-.584 4.492-1.308 5.335-.11.127-1.306-.57-2.66-1.55l-2.463-1.777-.01 3.184c-.006 1.75-.196 3.847-.425 4.656-.448 1.583-1.637 2.028-1.637.613zm-18.416-25.386c-4.39-3.666-5.057-4.505-4.96-6.242l.104-1.85.287 1.787c.167 1.043 1.336 2.606 2.81 3.756l2.523 1.97 1.55-1.793c.854-.986 1.563-2.16 1.577-2.61.035-1.173.246-1.075 3.218 1.504 2.64 2.292 2.682 2.303 3.075.82.22-.83.14-2.387-.173-3.464-.863-2.96-.694-3.407.614-1.622.65.89 1.698 2.147 2.326 2.795 1.095 1.125 1.162 1.11 1.57-.33.233-.826.43-2.34.434-3.363l.01-1.86 2.38 2.698c2.225 2.522 2.43 2.615 3.11 1.413.398-.707.73-2.41.736-3.78.007-1.775.194-2.222.645-1.547.754 1.13.23 4.2-1.16 6.815l-.997 1.877-1.31-2.04c-1.676-2.61-2.234-2.568-3.31.248-1.015 2.66-1.676 2.863-2.666.817-.64-1.324-.763-1.162-1.218 1.62l-.506 3.092-3.03-2.352-3.027-2.35-1.362 1.548c-.75.85-1.372 1.916-1.384 2.365-.027.976-.755 1.006-1.866.08zm39.051-13.654c-1.598-1.44-2.7-2.813-2.447-3.052.253-.24.537-.308.632-.152.095.155 1.4 1.528 2.903 3.052 3.457 3.507 2.746 3.607-1.088.152zm-52.015-5.376c-1.455-1.965-1.355-3.268.415-5.398 1.278-1.54 1.862-1.748 4.095-1.465 1.432.182 4.514 1.448 6.85 2.812 2.695 1.576 5.484 2.63 7.644 2.894 1.87.227 3.4.313 3.4.19 0-.122-.776-1.388-1.726-2.813-2.255-3.382-2.178-3.745.366-1.718 2.61 2.08 5.734 2.69 12.712 2.477l3.41-.105-1.978-1.955c-2.766-2.735-1.915-2.98 1.14-.328 2.865 2.486 2.686 2.662-3.345 3.263-2.562.256-5.318.07-7.61-.512-3.426-.87-3.56-.858-2.91.29.374.663.98 1.204 1.347 1.204.366 0 .666.336.666.746 0 1.26-7.402.152-10.94-1.64-8.08-4.09-9.097-4.444-11.02-3.838-1.07.337-2.14 1.324-2.51 2.313-1.232 3.3 3.448 5.865 5.378 2.948.56-.845.43-1.424-.554-2.452-1.347-1.41-1.22-1.61.597-.95 1.29.47 1.465 3.568.264 4.705-1.373 1.3-4.508.932-5.692-.67z", fill "#000" ]
                    []
                , Svg.path [ d "M412.368 248.57c-1.01-.956-.218-1.19 4.312-1.275 5.604-.105 9.008-1.04 13.024-3.574 3.218-2.03 4.09-1.63 1.036.476-2.786 1.92-7.132 3.398-11.328 3.85-2.03.22-4.347.522-5.145.673-.798.15-1.653.084-1.9-.15z", fill "#000" ]
                    []
                ]
            ]
        ]