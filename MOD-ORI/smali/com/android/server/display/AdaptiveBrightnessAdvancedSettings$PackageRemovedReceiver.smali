.class public final Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$PackageRemovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$PackageRemovedReceiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string/jumbo p2, "com.samsung.android.displayassistant"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$PackageRemovedReceiver;->this$0:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string/jumbo p1, "darkening_rate_ratio"

    .line 27
    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
