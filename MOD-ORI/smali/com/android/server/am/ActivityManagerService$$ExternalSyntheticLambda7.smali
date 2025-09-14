.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(I[Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->$r8$classId:I

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$2:I

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Landroid/content/pm/IPackageManager;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$2:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, [Ljava/lang/String;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    .line 16
    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 17
    .line 18
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 19
    .line 20
    if-eq v2, v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    aget-object v1, v1, v2

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :pswitch_0
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$2:I

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, [Ljava/lang/String;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Ljava/util/ArrayList;

    .line 48
    .line 49
    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 50
    .line 51
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 52
    .line 53
    if-eq v2, v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    aget-object v1, v1, v2

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Landroid/content/pm/IPackageManager;

    .line 79
    .line 80
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda7;->f$2:I

    .line 81
    .line 82
    check-cast p1, Ljava/lang/String;

    .line 83
    .line 84
    const-string v2, "Package: "

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-wide/16 v2, 0x0

    .line 93
    .line 94
    :try_start_0
    invoke-interface {v1, p1, v2, v3, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    if-eqz p0, :cond_4

    .line 99
    .line 100
    const-string v1, " v"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 106
    .line 107
    .line 108
    move-result-wide v1

    .line 109
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 113
    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    const-string v1, " ("

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p0, ")"

    .line 127
    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catch_0
    move-exception p0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v2, "Error getting package info: "

    .line 136
    .line 137
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const-string v1, "ActivityManager"

    .line 148
    .line 149
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_0
    const-string p0, "\n"

    .line 153
    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
