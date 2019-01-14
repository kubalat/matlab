function varargout = semestralka(varargin)
% SEMESTRALKA MATLAB code for semestralka.fig
%      SEMESTRALKA, by itself, creates a new SEMESTRALKA or raises the existing
%      singleton*.
%
%      H = SEMESTRALKA returns the handle to a new SEMESTRALKA or the handle to
%      the existing singleton*.
%
%      SEMESTRALKA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEMESTRALKA.M with the given input arguments.
%
%      SEMESTRALKA('Property','Value',...) creates a new SEMESTRALKA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before semestralka_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to semestralka_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help semestralka

% Last Modified by GUIDE v2.5 04-Dec-2018 20:55:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @semestralka_OpeningFcn, ...
                   'gui_OutputFcn',  @semestralka_OutputFcn, ...
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


% My variables

% End

% --- Executes just before semestralka is made visible.
function semestralka_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to semestralka (see VARARGIN)

% Choose default command line output for semestralka
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes semestralka wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = semestralka_OutputFcn(hObject, eventdata, handles) 
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
[file,path] = uigetfile;
set(hObject.selectedFile, file);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over selectFileBtn.
function selectFileBtn_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to selectFileBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in selectFileBtn.
function selectFileBtn_Callback(hObject, eventdata, handles)
% hObject    handle to selectFileBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over selectFileBtn.
function selectFileBtn_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to selectFileBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in loadFileBtn.
function loadFileBtn_Callback(hObject, eventdata, handles)
% hObject    handle to loadFileBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
