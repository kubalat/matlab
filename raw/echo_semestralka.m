function varargout = echo_semestralka(varargin)
% ECHO_SEMESTRALKA MATLAB code for echo_semestralka.fig
%      ECHO_SEMESTRALKA, by itself, creates a new ECHO_SEMESTRALKA or raises the existing
%      singleton*.
%
%      H = ECHO_SEMESTRALKA returns the handle to a new ECHO_SEMESTRALKA or the handle to
%      the existing singleton*.
%
%      ECHO_SEMESTRALKA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ECHO_SEMESTRALKA.M with the given input arguments.
%
%      ECHO_SEMESTRALKA('Property','Value',...) creates a new ECHO_SEMESTRALKA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before echo_semestralka_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to echo_semestralka_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help echo_semestralka

% Last Modified by GUIDE v2.5 04-Dec-2018 20:45:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @echo_semestralka_OpeningFcn, ...
                   'gui_OutputFcn',  @echo_semestralka_OutputFcn, ...
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


% --- Executes just before echo_semestralka is made visible.
function echo_semestralka_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to echo_semestralka (see VARARGIN)

% Choose default command line output for echo_semestralka
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes echo_semestralka wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = echo_semestralka_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function selectFileBtn_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton1.
function selectFileBtn_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
