.class public final Lcom/android/server/sepunion/GalaxyRegistryService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/GalaxyRegistryService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/GalaxyRegistryService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$1;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$1;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/android/server/sepunion/GalaxyRegistryService;->-$$Nest$mstartService(Lcom/android/server/sepunion/GalaxyRegistryService;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
