.class public final synthetic Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

.field public final synthetic f$1:Lcom/android/server/inputmethod/InputMethodSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;Lcom/android/server/inputmethod/InputMethodSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/inputmethod/InputMethodSettings;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/inputmethod/InputMethodSettings;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "show_keyboard_button"

    .line 9
    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0, p2, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putInt(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, v0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mSemInputMethodMenuListener:Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string/jumbo p2, "com.samsung.android.intent.action.KEYBOARDBUTTON_SWITCH"

    .line 49
    .line 50
    .line 51
    new-instance v0, Ljava/lang/Thread;

    .line 52
    .line 53
    new-instance v1, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda8;

    .line 54
    .line 55
    invoke-direct {v1, p2, p1, p0}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
