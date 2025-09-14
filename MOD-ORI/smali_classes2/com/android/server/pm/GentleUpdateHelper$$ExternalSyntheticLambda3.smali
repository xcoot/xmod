.class public final synthetic Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/GentleUpdateHelper;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/GentleUpdateHelper;Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/GentleUpdateHelper;

    iput-object p2, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/GentleUpdateHelper;Ljava/lang/String;I)V
    .locals 0

    .line 2
    const/4 p3, 0x0

    iput p3, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/GentleUpdateHelper;

    iput-object p2, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/GentleUpdateHelper;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/GentleUpdateHelper;->processPendingCheck(Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;Z)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/GentleUpdateHelper;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    move v3, v2

    .line 31
    :goto_0
    if-ge v3, v1, :cond_2

    .line 32
    .line 33
    iget-object v4, v0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;

    .line 40
    .line 41
    iget-object v5, v4, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->packageNames:Ljava/util/List;

    .line 42
    .line 43
    iget-object v6, v0, Lcom/android/server/pm/GentleUpdateHelper;->mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

    .line 44
    .line 45
    invoke-virtual {v6, v5}, Lcom/android/server/pm/AppStateHelper;->getDependencyPackages(Ljava/util/List;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0, v4, v2}, Lcom/android/server/pm/GentleUpdateHelper;->processPendingCheck(Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_1

    .line 62
    .line 63
    :cond_0
    iget-object v5, v0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    .line 64
    .line 65
    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object p0, v0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_3

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/server/pm/GentleUpdateHelper;->scheduleIdleJob()V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
