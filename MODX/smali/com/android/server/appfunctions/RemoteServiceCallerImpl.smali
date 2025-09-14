.class public final Lcom/android/server/appfunctions/RemoteServiceCallerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/appfunctions/RemoteServiceCaller;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mInterfaceConverter:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    iput-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mHandler:Landroid/os/Handler;

    .line 15
    iput-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mContext:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mInterfaceConverter:Ljava/util/function/Function;

    .line 19
    iput-object p3, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 21
    return-void
.end method
