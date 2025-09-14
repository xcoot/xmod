.class public final Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTetherHandler:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
