.class public final Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$3;
.super Landroid/os/IUserRestrictionsListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

.field public final synthetic val$mainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$3;->this$0:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$3;->val$mainThreadHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/IUserRestrictionsListener$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$3;->val$mainThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$3;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
