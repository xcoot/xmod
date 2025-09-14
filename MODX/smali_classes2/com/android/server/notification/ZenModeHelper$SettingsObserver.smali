.class public final Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final ZEN_MODE:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "zen_mode"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final update(Landroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 10
    .line 11
    iget v0, p1, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string/jumbo v1, "zen_mode"

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eq v0, p1, :cond_1

    .line 28
    .line 29
    sget-boolean p1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    const-string p1, "ZenModeHelper"

    .line 34
    .line 35
    const-string v0, "Fixing zen mode setting"

    .line 36
    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 41
    .line 42
    iget p1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
