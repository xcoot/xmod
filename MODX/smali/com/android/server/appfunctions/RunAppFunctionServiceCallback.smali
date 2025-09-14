.class public final Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCancellationCallback:Landroid/app/appfunctions/ICancellationCallback;

.field public final mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

.field public final mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;


# direct methods
.method public constructor <init>(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 6
    iput-object p3, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 8
    iput-object p2, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mCancellationCallback:Landroid/app/appfunctions/ICancellationCallback;

    .line 10
    return-void
.end method
