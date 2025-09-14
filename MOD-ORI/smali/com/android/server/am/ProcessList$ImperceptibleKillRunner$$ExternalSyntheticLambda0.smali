.class public final synthetic Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return-object p0
.end method
