.class public final synthetic Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/FlexibilityController$FcHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPackagesToCheck:Landroid/util/ArraySet;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPackagesToCheck:Landroid/util/ArraySet;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 39
    :goto_1
    return p0
.end method
