.class public final synthetic Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/ModifierShortcutManager;

.field public final synthetic f$1:Landroid/view/KeyEvent;

.field public final synthetic f$2:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/ModifierShortcutManager;Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/ModifierShortcutManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/KeyEvent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/ModifierShortcutManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/KeyEvent;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class v2, Landroid/hardware/input/InputManager;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    filled-new-array {v1}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, p0, v2, v1}, Lcom/android/server/input/KeyboardMetricsCollector;->logKeyboardSystemsEventReportedAtom(Landroid/view/InputDevice;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;I[I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
