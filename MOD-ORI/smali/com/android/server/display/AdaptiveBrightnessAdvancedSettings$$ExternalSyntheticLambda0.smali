.class public final synthetic Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

.field public final synthetic f$1:Landroid/content/ContentResolver;

.field public final synthetic f$2:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;

.field public final synthetic f$3:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;Landroid/content/ContentResolver;Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;Landroid/content/IntentFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$3:Landroid/content/IntentFilter;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$3:Landroid/content/IntentFilter;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v3, "darkening_rate_ratio"

    .line 13
    .line 14
    .line 15
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$PackageRemovedReceiver;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$PackageRemovedReceiver;-><init>(Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v1, v2, p0, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    return-void
.end method
