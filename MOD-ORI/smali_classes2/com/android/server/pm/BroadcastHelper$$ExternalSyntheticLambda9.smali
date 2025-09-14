.class public final synthetic Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BroadcastHelper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/function/Supplier;

.field public final synthetic f$4:[Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BroadcastHelper;ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/BroadcastHelper;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$1:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$3:Ljava/util/function/Supplier;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$4:[Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v12, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/BroadcastHelper;

    .line 4
    .line 5
    iget-boolean v13, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$1:Z

    .line 6
    .line 7
    iget v14, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$2:I

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$3:Ljava/util/function/Supplier;

    .line 10
    .line 11
    iget-object v15, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$4:[Ljava/lang/String;

    .line 12
    .line 13
    iget-object v11, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$5:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "IActivityManager null. Cannot send MY_PACKAGE_ "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz v13, :cond_0

    .line 32
    .line 33
    const-string v1, ""

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v1, "UN"

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, "SUSPENDED broadcasts"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "PackageManager"

    .line 51
    .line 52
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_1
    filled-new-array {v14}, [I

    .line 57
    .line 58
    .line 59
    move-result-object v16

    .line 60
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v10, v0

    .line 65
    check-cast v10, Lcom/android/server/pm/Computer;

    .line 66
    .line 67
    array-length v9, v15

    .line 68
    const/4 v0, 0x0

    .line 69
    move v8, v0

    .line 70
    :goto_1
    if-ge v8, v9, :cond_4

    .line 71
    .line 72
    aget-object v5, v15, v8

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    if-eqz v13, :cond_2

    .line 76
    .line 77
    const/16 v1, 0x3e8

    .line 78
    .line 79
    invoke-static {v14, v1, v10, v5}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageAppExtras(IILcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move-object v1, v0

    .line 85
    :goto_2
    if-eqz v1, :cond_3

    .line 86
    .line 87
    new-instance v0, Landroid/os/Bundle;

    .line 88
    .line 89
    const/4 v2, 0x1

    .line 90
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 91
    .line 92
    .line 93
    const-string v2, "android.intent.extra.SUSPENDED_PACKAGE_EXTRAS"

    .line 94
    .line 95
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    move-object v3, v0

    .line 99
    const/16 v17, 0x0

    .line 100
    .line 101
    const/16 v18, 0x0

    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    const/high16 v4, 0x1000000

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    const/16 v19, 0x0

    .line 108
    .line 109
    const/16 v20, 0x0

    .line 110
    .line 111
    move-object v0, v12

    .line 112
    move-object v1, v11

    .line 113
    move-object/from16 v7, v16

    .line 114
    .line 115
    move/from16 v21, v8

    .line 116
    .line 117
    move/from16 v8, v17

    .line 118
    .line 119
    move/from16 v17, v9

    .line 120
    .line 121
    move-object/from16 v9, v18

    .line 122
    .line 123
    move-object/from16 v18, v10

    .line 124
    .line 125
    move-object/from16 v10, v19

    .line 126
    .line 127
    move-object/from16 v19, v11

    .line 128
    .line 129
    move-object/from16 v11, v20

    .line 130
    .line 131
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v8, v21, 0x1

    .line 135
    .line 136
    move/from16 v9, v17

    .line 137
    .line 138
    move-object/from16 v10, v18

    .line 139
    .line 140
    move-object/from16 v11, v19

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    :goto_3
    return-void
.end method
