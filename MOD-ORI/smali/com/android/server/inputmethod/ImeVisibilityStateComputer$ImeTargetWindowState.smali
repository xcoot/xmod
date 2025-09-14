.class public final Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHasFocusedEditor:Z

.field public mImeDisplayId:I

.field public final mImeFocusChanged:Z

.field public final mIsStartInputByGainFocus:Z

.field public mRequestImeToken:Landroid/os/IBinder;

.field public mRequestedImeVisible:Z

.field public final mSoftInputModeState:I


# direct methods
.method public constructor <init>(IIIZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeDisplayId:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mSoftInputModeState:I

    .line 8
    .line 9
    iput-boolean p4, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeFocusChanged:Z

    .line 10
    .line 11
    iput-boolean p5, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mHasFocusedEditor:Z

    .line 12
    .line 13
    iput-boolean p6, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mIsStartInputByGainFocus:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ImeTargetWindowState{ imeToken "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestImeToken:Landroid/os/IBinder;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " imeFocusChanged "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeFocusChanged:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " hasEditorFocused "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mHasFocusedEditor:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " requestedImeVisible "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " imeDisplayId "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeDisplayId:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " softInputModeState "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mSoftInputModeState:I

    .line 59
    .line 60
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, " isStartInputByGainFocus "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mIsStartInputByGainFocus:Z

    .line 73
    .line 74
    const-string/jumbo v1, "}"

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method
