.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->loadRollbacks(Ljava/io/File;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_0

    .line 36
    .line 37
    iget-object p0, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 38
    .line 39
    check-cast p0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 56
    .line 57
    iget-object v2, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v3, 0x1

    .line 66
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object p0, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 71
    .line 72
    check-cast p0, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 89
    .line 90
    const-string v2, "Fingerprint changed"

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    iget-object p0, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 97
    .line 98
    check-cast p0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p0, Lcom/android/internal/util/IndentingPrintWriter;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 114
    .line 115
    check-cast v1, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_3

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 132
    .line 133
    invoke-virtual {v2, p0}, Lcom/android/server/rollback/Rollback;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 138
    .line 139
    .line 140
    iget-object v0, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/android/server/rollback/RollbackStore;->mRollbackHistoryDir:Ljava/io/File;

    .line 143
    .line 144
    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->loadRollbacks(Ljava/io/File;)Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_5

    .line 155
    .line 156
    const-string v1, "Historical rollbacks:"

    .line 157
    .line 158
    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_4

    .line 173
    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 179
    .line 180
    invoke-virtual {v1, p0}, Lcom/android/server/rollback/Rollback;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 188
    .line 189
    .line 190
    :cond_5
    return-void

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast p0, Ljava/lang/String;

    .line 196
    .line 197
    const-string v1, "Expired by API"

    .line 198
    .line 199
    invoke-virtual {v0, p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->expireRollbackForPackageInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
