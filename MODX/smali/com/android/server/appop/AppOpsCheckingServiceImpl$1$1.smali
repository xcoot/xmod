.class public final Lcom/android/server/appop/AppOpsCheckingServiceImpl$1$1;
.super Landroid/os/AsyncTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1$1;->this$1:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 3
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1$1;->this$1:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    .line 5
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;->this$0:Lcom/android/server/appop/AppOpsCheckingServiceImpl;

    .line 7
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->writeState()V

    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method
