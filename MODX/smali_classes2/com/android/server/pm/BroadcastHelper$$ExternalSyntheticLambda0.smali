.class public final synthetic Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BroadcastHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:[I

.field public final synthetic f$7:[I

.field public final synthetic f$8:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/BroadcastHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$6:[I

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$7:[I

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$8:Landroid/util/SparseArray;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/BroadcastHelper;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$6:[I

    .line 14
    .line 15
    iget-object v8, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$7:[I

    .line 16
    .line 17
    iget-object v9, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$8:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance p0, Landroid/os/Bundle;

    .line 23
    .line 24
    const/4 v6, 0x4

    .line 25
    invoke-direct {p0, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    check-cast v10, Ljava/lang/String;

    .line 34
    .line 35
    const-string v11, "android.intent.extra.changed_component_name"

    .line 36
    .line 37
    invoke-virtual {p0, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    new-array v10, v10, [Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string v11, "android.intent.extra.changed_component_name_list"

    .line 50
    .line 51
    invoke-virtual {p0, v11, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v10, "android.intent.extra.DONT_KILL_APP"

    .line 55
    .line 56
    invoke-virtual {p0, v10, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string v1, "android.intent.extra.UID"

    .line 60
    .line 61
    invoke-virtual {p0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    const-string v1, "android.intent.extra.REASON"

    .line 67
    .line 68
    invoke-virtual {p0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    const/high16 v1, 0x40000000    # 2.0f

    .line 78
    .line 79
    move v4, v1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    move v4, v6

    .line 82
    :goto_0
    const/4 v10, 0x0

    .line 83
    const/4 v11, 0x0

    .line 84
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v6, 0x0

    .line 88
    move-object v3, p0

    .line 89
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
