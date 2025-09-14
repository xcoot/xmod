.class public abstract Lcom/android/server/policy/KeyboardShortcutManager$Behavior;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIntent:Landroid/content/Intent;

.field public final mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public preCondition()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->externalKeyboardPolicy()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public startTargetApp(I)Z
    .locals 3

    .line 1
    const-string v0, "launch keyboard shortcut app, displayId="

    .line 2
    .line 3
    const-string v1, "KeyboardShortcutManager"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 38
    .line 39
    invoke-virtual {p1, p0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-static {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Behavior="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " intent="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
