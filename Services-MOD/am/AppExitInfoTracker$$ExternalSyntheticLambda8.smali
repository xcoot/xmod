.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Landroid/util/ArraySet;

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 12
    check-cast p2, Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 17
    move-result p1

    .line 18
    add-int/lit8 p1, p1, -0x1

    .line 20
    :goto_0
    if-ltz p1, :cond_4

    .line 22
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 28
    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 33
    move-result v1

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 36
    :goto_1
    if-ltz v1, :cond_1

    .line 38
    iget-object v2, v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 43
    iget-object v2, v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 45
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/app/ApplicationExitInfo;

    .line 51
    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 69
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 72
    move-result v1

    .line 73
    add-int/lit8 v1, v1, -0x1

    .line 75
    :goto_2
    if-ltz v1, :cond_3

    .line 77
    iget-object v2, v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 79
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 82
    iget-object v2, v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 84
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Landroid/app/ApplicationExitInfo;

    .line 90
    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 103
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 108
    goto :goto_0

    .line 109
    :cond_4
    const/4 p0, 0x0

    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :pswitch_0
    check-cast p0, Landroid/util/proto/ProtoOutputStream;

    .line 117
    check-cast p1, Ljava/lang/String;

    .line 119
    check-cast p2, Landroid/util/SparseArray;

    .line 121
    const-wide v0, 0x20b00000002L

    .line 126
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 129
    move-result-wide v2

    .line 130
    const-wide v4, 0x10900000001L

    .line 135
    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 141
    move-result p1

    .line 142
    const/4 v4, 0x0

    .line 143
    move v5, v4

    .line 144
    :goto_3
    if-ge v5, p1, :cond_7

    .line 146
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 152
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 158
    move-result-wide v7

    .line 159
    const-wide v9, 0x10500000001L

    .line 164
    iget v11, v6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    .line 166
    invoke-virtual {p0, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 169
    move v9, v4

    .line 170
    :goto_4
    iget-object v10, v6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 172
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 175
    move-result v10

    .line 176
    if-ge v9, v10, :cond_5

    .line 178
    iget-object v10, v6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 180
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 183
    move-result-object v10

    .line 184
    check-cast v10, Landroid/app/ApplicationExitInfo;

    .line 186
    invoke-virtual {v10, p0, v0, v1}, Landroid/app/ApplicationExitInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 189
    add-int/lit8 v9, v9, 0x1

    .line 191
    goto :goto_4

    .line 192
    :cond_5
    move v9, v4

    .line 193
    :goto_5
    iget-object v10, v6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 195
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 198
    move-result v10

    .line 199
    if-ge v9, v10, :cond_6

    .line 201
    iget-object v10, v6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 203
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 206
    move-result-object v10

    .line 207
    check-cast v10, Landroid/app/ApplicationExitInfo;

    .line 209
    const-wide v11, 0x20b00000003L

    .line 214
    invoke-virtual {v10, p0, v11, v12}, Landroid/app/ApplicationExitInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 217
    add-int/lit8 v9, v9, 0x1

    .line 219
    goto :goto_5

    .line 220
    :cond_6
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 223
    add-int/lit8 v5, v5, 0x1

    .line 225
    goto :goto_3

    .line 226
    :cond_7
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 229
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    move-result-object p0

    .line 233
    return-object p0

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
