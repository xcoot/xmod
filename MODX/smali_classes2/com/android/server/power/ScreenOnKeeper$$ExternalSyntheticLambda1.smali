.class public final synthetic Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/ScreenOnKeeper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ScreenOnKeeper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/ScreenOnKeeper;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/ScreenOnKeeper;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;-><init>(Lcom/android/server/power/ScreenOnKeeper;Landroid/os/Handler;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mSettingsObserver:Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string/jumbo v1, "screen_on_keeper"

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mSettingsObserver:Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;

    .line 34
    .line 35
    const/4 v2, -0x1

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mSettingsObserver:Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
