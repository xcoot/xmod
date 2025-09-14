.class public final Lcom/android/server/inputmethod/ImeBindingState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFocusedWindow:Landroid/os/IBinder;

.field public final mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

.field public final mFocusedWindowEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public final mFocusedWindowSoftInputMode:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ILcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 6
    iput p2, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 10
    iput-object p4, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 12
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/Printer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "  mFocusedWindow()="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    check-cast p1, Landroid/util/PrintWriterPrinter;

    .line 19
    invoke-virtual {p1, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "  softInputMode="

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget v1, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 31
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "  mFocusedWindowClient="

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p1, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 64
    return-void
.end method
