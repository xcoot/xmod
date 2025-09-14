.class public final Lcom/android/server/SEAMService$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SEAMService;


# direct methods
.method public constructor <init>(Lcom/android/server/SEAMService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/SEAMService$1;->this$0:Lcom/android/server/SEAMService;

    .line 2
    .line 3
    const-string p1, "Service Keeper Thread"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/SEAMService$1;->this$0:Lcom/android/server/SEAMService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/SEAMService;->mSKHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/SEAMService$1$1;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
