.class public final Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$2;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "[KnoxCustomManagerService] PowerOff Device"

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/android/server/power/ShutdownThread;->systemShutdown(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
