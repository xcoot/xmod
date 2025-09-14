.class public final Lcom/android/server/accessibility/AccessibilityServiceConnection$AccessibilityInputMethodSessionCallback;
.super Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final sessionCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x20

    .line 2
    .line 3
    const-string p0, "ASC.sessionCreated"

    .line 4
    .line 5
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    :try_start_0
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onSessionForAccessibilityCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method
