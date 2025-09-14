.class public final Lcom/android/server/vr/SettingsObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/SettingsObserver;

.field public final synthetic val$secureSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/SettingsObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vr/SettingsObserver$1;->this$0:Lcom/android/server/vr/SettingsObserver;

    .line 2
    .line 3
    const-string p1, "enabled_vr_listeners"

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/vr/SettingsObserver$1;->val$secureSettingName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.os.action.SETTING_RESTORED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string/jumbo p1, "setting_name"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/android/server/vr/SettingsObserver$1;->val$secureSettingName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const-string/jumbo p1, "previous_value"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    const-string/jumbo p1, "new_value"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/vr/SettingsObserver$1;->this$0:Lcom/android/server/vr/SettingsObserver;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 43
    .line 44
    .line 45
    iget-object p0, p1, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    .line 46
    .line 47
    check-cast p0, Landroid/util/ArraySet;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/android/server/vr/EnabledComponentsObserver;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method
