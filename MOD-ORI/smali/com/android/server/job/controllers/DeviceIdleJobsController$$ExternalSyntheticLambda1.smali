.class public final synthetic Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/util/proto/ProtoOutputStream;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-wide v1, 0x20b00000002L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    const-wide v3, 0x10b00000001L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 32
    .line 33
    .line 34
    const-wide v3, 0x10500000002L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    iget v5, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 40
    .line 41
    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 42
    .line 43
    .line 44
    const-wide v3, 0x10900000003L

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 55
    .line 56
    const/high16 v4, 0x2000000

    .line 57
    .line 58
    and-int/2addr v3, v4

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v3, 0x0

    .line 64
    :goto_0
    const-wide v4, 0x10800000004L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 70
    .line 71
    .line 72
    const-wide v3, 0x10800000005L

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    iget-boolean v5, p1, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    .line 78
    .line 79
    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    const-wide v3, 0x10800000006L

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 105
    .line 106
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    const-string v1, "#"

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 117
    .line 118
    .line 119
    const-string v1, " from "

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 125
    .line 126
    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 127
    .line 128
    .line 129
    const-string v1, ": "

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 140
    .line 141
    const/high16 v2, 0x2000000

    .line 142
    .line 143
    and-int/2addr v1, v2

    .line 144
    if-eqz v1, :cond_1

    .line 145
    .line 146
    const-string v1, " RUNNABLE"

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_1
    const-string v1, " WAITING"

    .line 150
    .line 151
    :goto_1
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-boolean v1, p1, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    .line 155
    .line 156
    if-eqz v1, :cond_2

    .line 157
    .line 158
    const-string v1, " WHITELISTED"

    .line 159
    .line 160
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_2
    iget-object v0, v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    .line 164
    .line 165
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_3

    .line 170
    .line 171
    const-string p1, " ALLOWED_IN_DOZE"

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_3
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
