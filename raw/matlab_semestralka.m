function varargout = matlab_semestralka(varargin)
% MATLAB_SEMESTRALKA MATLAB code for matlab_semestralka.fig
%      MATLAB_SEMESTRALKA, by itself, creates a new MATLAB_SEMESTRALKA or raises the existing
%      singleton*.
%
%      H = MATLAB_SEMESTRALKA returns the handle to a new MATLAB_SEMESTRALKA or the handle to
%      the existing singleton*.
%
%      MATLAB_SEMESTRALKA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATLAB_SEMESTRALKA.M with the given input arguments.
%
%      MATLAB_SEMESTRALKA('Property','Value',...) creates a new MATLAB_SEMESTRALKA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matlab_semestralka_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matlab_semestralka_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matlab_semestralka

% Last Modified by GUIDE v2.5 08-Dec-2018 10:38:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matlab_semestralka_OpeningFcn, ...
                   'gui_OutputFcn',  @matlab_semestralka_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT



% --- Executes just before matlab_semestralka is made visible.
function matlab_semestralka_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matlab_semestralka (see VARARGIN)

% Choose default command line output for matlab_semestralka
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes matlab_semestralka wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% While loading gui form, set axis in graphs
set(handles.originalSoundLeft, 'XTick', []);
set(handles.originalSoundRight, 'XTick', []);
set(handles.originalSoundLeft, 'YTick', []);
set(handles.originalSoundRight, 'YTick', []);
set(handles.modifiedSoundLeft, 'XTick', []);
set(handles.modifiedSoundRight, 'XTick', []);
set(handles.modifiedSoundLeft, 'YTick', []);
set(handles.modifiedSoundRight, 'YTick', []);
ylim(handles.originalSoundLeft,[-3 3]);
ylim(handles.originalSoundRight,[-3 3]);
ylim(handles.modifiedSoundLeft,[-3 3]);
ylim(handles.modifiedSoundRight,[-3 3]);

% --- Outputs from this function are returned to the command line.
function varargout = matlab_semestralka_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in selectFileBtn.
function selectFileBtn_Callback(hObject, eventdata, handles)
% hObject    handle to selectFileBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file,path] = uigetfile('*.*');

if file == 0
    return;    
else
    % Show info box
    msgbox('Loading file...', 'modal');
    
    % Reset variables and graphs and disable buttons
    handles.y_original_sound = [];
    handles.fs_original_sound = [];
    set(handles.createEchoBtn, 'Enable', 'off');
    set(handles.playStopEchoBtn, 'Enable', 'off');
    
    set(handles.echoDelayLeftSli, 'Enable', 'off');
    set(handles.echoStrengthLeftSli, 'Enable', 'off');
    set(handles.echoRepeatsLeftSli, 'Enable', 'off');
    set(handles.echoDelayLeftSli, 'Value', 0);
    set(handles.echoStrengthLeftSli, 'Value', 0);
    set(handles.echoRepeatsLeftSli, 'Value', 0);
    set(handles.echoDelayLeftLabel, 'String', '0 seconds');
    set(handles.echoStrengthLeftLabel, 'String', '0 %');
    set(handles.echoRepeatsLeftLabel, 'String', '0 times');
    
    set(handles.echoDelayRightSli, 'Enable', 'off');
    set(handles.echoStrengthRightSli, 'Enable', 'off');
    set(handles.echoRepeatsRightSli, 'Enable', 'off');
    set(handles.echoDelayRightSli, 'Value', 0);
    set(handles.echoStrengthRightSli, 'Value', 0);
    set(handles.echoRepeatsRightSli, 'Value', 0);
    set(handles.echoDelayRightLabel, 'String', '0 seconds');
    set(handles.echoStrengthRightLabel, 'String', '0 %');
    set(handles.echoRepeatsRightLabel, 'String', '0 times');

    % Load audio
    set(handles.selectedFileLabel, 'String', file);
    [y, Fs] = audioread(strcat(path, file));
    [m,n] = size(y);
    
    % Make stereo if mono
    if n==1
        y = [y y];
    end
    
    % Enable buttons 
    set(handles.echoDelayLeftSli, 'Enable', 'on');
    set(handles.echoStrengthLeftSli, 'Enable', 'on');
    set(handles.echoRepeatsLeftSli, 'Enable', 'on');
    
    set(handles.echoDelayRightSli, 'Enable', 'on');
    set(handles.echoStrengthRightSli, 'Enable', 'on');
    set(handles.echoRepeatsRightSli, 'Enable', 'on');
    
    set(handles.createEchoBtn, 'Enable', 'on');
    
    set(handles.echoDelayLeftSli, 'Max', round(m/Fs, 0)-1);
    set(handles.echoDelayRightSli, 'Max', round(m/Fs, 0)-1);
    
    
    % Show in graph
    plot(handles.originalSoundLeft, y(:,1));
    plot(handles.originalSoundRight, y(:,2));
    plot(handles.modifiedSoundLeft, y(:,1));
    plot(handles.modifiedSoundRight, y(:,2));
    
    % Reset coords
    set(handles.originalSoundLeft, 'XTick', []);
    set(handles.originalSoundRight, 'XTick', []);
    set(handles.originalSoundLeft, 'YTick', []);
    set(handles.originalSoundRight, 'YTick', []);
    ylim(handles.originalSoundLeft,[-2.5 2.5]);
    ylim(handles.originalSoundRight,[-2.5 2.5]);
    
    set(handles.modifiedSoundLeft, 'XTick', []);
    set(handles.modifiedSoundRight, 'XTick', []);
    set(handles.modifiedSoundLeft, 'YTick', []);
    set(handles.modifiedSoundRight, 'YTick', []);
    ylim(handles.modifiedSoundLeft,[-2.5 2.5]);
    ylim(handles.modifiedSoundRight,[-2.5 2.5]);


    % Duplicate signals
    handles.y_original_sound = y;
    handles.fs_original_sound = Fs;
    
    % Save variables
    guidata(hObject, handles); 
end
    

% --- Executes on button press in loadFileBtn. DEPRECATED
function loadFileBtn_Callback(hObject, eventdata, handles)
% hObject    handle to loadFileBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[y, Fs] = audioread(handles.file_path);
handles.y_original_file = y;
handles.fs_original_file = Fs;

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over selectFileBtn.
function selectFileBtn_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to selectFileBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function selectedFileLabel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to selectedFileLabel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on slider movement.
function echoDelayLeftSli_Callback(hObject, eventdata, handles)
% hObject    handle to echoDelayLeftSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderPos = get(hObject, 'Value');
set(handles.echoDelayLeftLabel, 'String', strcat(num2str(round(sliderPos, 0)), ' seconds'));


% --- Executes during object creation, after setting all properties.
function echoDelayLeftSli_CreateFcn(hObject, eventdata, handles)
% hObject    handle to echoDelayLeftSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over echoDelayLeftSli.
function echoDelayLeftSli_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to echoDelayLeftSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function echoStrengthLeftSli_Callback(hObject, eventdata, handles)
% hObject    handle to echoStrengthSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderPos = get(hObject, 'Value')*100;
set(handles.echoStrengthLeftLabel, 'String', strcat(num2str(round(sliderPos, 0)), ' %'));


% --- Executes during object creation, after setting all properties.
function echoStrengthLeftSli_CreateFcn(hObject, eventdata, handles)
% hObject    handle to echoStrengthSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function echoRepeatsInput_Callback(hObject, eventdata, handles)
% hObject    handle to echoRepeatsInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of echoRepeatsInput as text
%        str2double(get(hObject,'String')) returns contents of echoRepeatsInput as a double


% --- Executes during object creation, after setting all properties.
function echoRepeatsInput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to echoRepeatsInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in createEchoBtn.
function createEchoBtn_Callback(hObject, eventdata, handles)
% hObject    handle to createEchoBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

msgbox('Creating echo...', 'modal');

% Reset variables and disable buttons
handles.y_new_sound = [];
set(handles.playStopEchoBtn, 'Enable', 'off');
set(handles.playStopEchoBtn, 'String', 'Play echo');

% Get variables
echoStrengthLeft = round(get(handles.echoStrengthLeftSli, 'Value')*100, 0)/100;
echoDelayLeft = round(get(handles.echoDelayLeftSli, 'Value'), 0);
echoRepeatsLeft = round(get(handles.echoRepeatsLeftSli, 'Value'), 0);

echoStrengthRight = round(get(handles.echoStrengthRightSli, 'Value')*100, 0)/100;
echoDelayRight = round(get(handles.echoDelayRightSli, 'Value'), 0);
echoRepeatsRight = round(get(handles.echoRepeatsRightSli, 'Value'), 0);

%Get size
[m,n] = size(handles.y_original_sound);

% Create echo
y_new = zeros(m,n);
y_new = handles.y_original_sound;

%Creating new sound
delayFsLeft = echoDelayLeft * handles.fs_original_sound;
delayFsRight = echoDelayRight * handles.fs_original_sound;

for i=1:echoRepeatsLeft
    actualDelayFs = i * delayFsLeft;
    
    for j=actualDelayFs + 1:m 
        y_new(j, 1) = y_new(j, 1) + echoStrengthLeft*handles.y_original_sound(j-actualDelayFs, 1);  
    end 
end

for i=1:echoRepeatsRight
    actualDelayFs = i * delayFsRight;
    
    for j=actualDelayFs + 1:m 
        y_new(j, 2) = y_new(j, 2) + echoStrengthRight*handles.y_original_sound(j-actualDelayFs, 2);  
    end 
end

% Show in graf
plot(handles.modifiedSoundLeft, y_new(:,1));
plot(handles.modifiedSoundRight, y_new(:,2));
set(handles.modifiedSoundLeft, 'XTick', []);
set(handles.modifiedSoundRight, 'XTick', []);
set(handles.modifiedSoundLeft, 'YTick', []);
set(handles.modifiedSoundRight, 'YTick', []);
ylim(handles.modifiedSoundLeft,[-2.5 2.5]);
ylim(handles.modifiedSoundRight,[-2.5 2.5]);

% Setting in handles
handles.y_new_sound = y_new;
guidata(hObject, handles);

% Enable buttons
set(handles.playStopEchoBtn, 'Enable', 'on');

% --- Executes on button press in playStopEchoBtn.
function playStopEchoBtn_Callback(hObject, eventdata, handles)
% hObject    handle to playStopEchoBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.playStopEchoBtn, 'String') == 'Play echo'
    sound(handles.y_new_sound, handles.fs_original_sound);
    set(handles.playStopEchoBtn, 'String', 'Stop echo');
    set(handles.createEchoBtn, 'Enable', 'off');
else
    clear sound;
    set(handles.playStopEchoBtn, 'String', 'Play echo');
    set(handles.createEchoBtn, 'Enable', 'on');
end
    


% --- Executes during object creation, after setting all properties.
function echoDelayLeftLabel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to echoDelayLeftLabel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on slider movement.
function echoRepeatsLeftSli_Callback(hObject, eventdata, handles)
% hObject    handle to echoRepeatsLeftSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderPos = get(hObject, 'Value');
set(handles.echoRepeatsLeftLabel, 'String', strcat(num2str(round(sliderPos, 0)), ' times'));

% --- Executes during object creation, after setting all properties.
function echoRepeatsLeftSli_CreateFcn(hObject, eventdata, handles)
% hObject    handle to echoRepeatsLeftSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function echoStrengtLeftSli_Callback(hObject, eventdata, handles)
% hObject    handle to echoStrengthLeftSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function echoStrengtLeftSli_CreateFcn(hObject, eventdata, handles)
% hObject    handle to echoStrengthLeftSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function echoDelayRightSli_Callback(hObject, eventdata, handles)
% hObject    handle to echoDelayRightSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderPos = get(hObject, 'Value');
set(handles.echoDelayRightLabel, 'String', strcat(num2str(round(sliderPos, 0)), ' seconds'));


% --- Executes during object creation, after setting all properties.
function echoDelayRightSli_CreateFcn(hObject, eventdata, handles)
% hObject    handle to echoDelayRightSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function echoStrengthRightSli_Callback(hObject, eventdata, handles)
% hObject    handle to echoStrengthRightSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderPos = get(hObject, 'Value')*100;
set(handles.echoStrengthRightLabel, 'String', strcat(num2str(round(sliderPos, 0)), ' %'));


% --- Executes during object creation, after setting all properties.
function echoStrengthRightSli_CreateFcn(hObject, eventdata, handles)
% hObject    handle to echoStrengthRightSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function echoRepeatsRightSli_Callback(hObject, eventdata, handles)
% hObject    handle to echoRepeatsRightSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderPos = get(hObject, 'Value');
set(handles.echoRepeatsRightLabel, 'String', strcat(num2str(round(sliderPos, 0)), ' times'));

% --- Executes during object creation, after setting all properties.
function echoRepeatsRightSli_CreateFcn(hObject, eventdata, handles)
% hObject    handle to echoRepeatsRightSli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
