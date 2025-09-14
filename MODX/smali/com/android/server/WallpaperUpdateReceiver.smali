.class public Lcom/android/server/WallpaperUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    const-string p1, "android.intent.action.DEVICE_CUSTOMIZATION_READY"

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    new-instance p1, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticLambda1;

    .line 17
    invoke-direct {p1, p0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/WallpaperUpdateReceiver;)V

    .line 20
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 23
    :cond_0
    return-void
.end method
