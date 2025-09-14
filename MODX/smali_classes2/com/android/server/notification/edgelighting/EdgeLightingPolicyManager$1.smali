.class public final Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    iget-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    .line 2
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p0, "enabled"

    goto :goto_0

    :cond_0
    const-string p0, "disabled"

    :goto_0
    const-string p1, "heads up is "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLightingPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    iget v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 3
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 4
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    const-string/jumbo p2, "touchpad_enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 8
    const-string v0, "key"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v0, "def"

    const-string v1, "false"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    const-string v3, "getSettings"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    const-string p2, "EdgeLightingPolicyManager"

    const-string v0, "Failed to get settings"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_0
    :goto_0
    const-string/jumbo p1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mIsTouchpadEnabled:Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
