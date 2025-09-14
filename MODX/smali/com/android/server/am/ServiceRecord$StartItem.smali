.class public final Lcom/android/server/am/ServiceRecord$StartItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final callingId:I

.field public deliveredTime:J

.field public deliveryCount:I

.field public doneExecutingCount:I

.field public final id:I

.field public final intent:Landroid/content/Intent;

.field public final mCallingPackageName:Ljava/lang/String;

.field public final mCallingProcessName:Ljava/lang/String;

.field public final mCallingProcessState:I

.field public final neededGrants:Lcom/android/server/uri/NeededUriGrants;

.field public final sr:Lcom/android/server/am/ServiceRecord;

.field public stringName:Ljava/lang/String;

.field public final taskRemoved:Z

.field public uriPermissions:Lcom/android/server/uri/UriPermissionOwner;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    .line 8
    iput p3, p0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    .line 10
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    .line 12
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 14
    iput p6, p0, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    .line 16
    iput-object p7, p0, Lcom/android/server/am/ServiceRecord$StartItem;->mCallingProcessName:Ljava/lang/String;

    .line 18
    iput-object p8, p0, Lcom/android/server/am/ServiceRecord$StartItem;->mCallingPackageName:Ljava/lang/String;

    .line 20
    iput p9, p0, Lcom/android/server/am/ServiceRecord$StartItem;->mCallingProcessState:I

    .line 22
    return-void
.end method


# virtual methods
.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v9, p1

    .line 3
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 6
    move-result-wide v10

    .line 7
    const-wide v1, 0x10500000001L

    .line 12
    iget v3, v0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    .line 14
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 17
    const-wide v2, 0x10b00000002L

    .line 22
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 24
    move-object v1, p1

    .line 25
    move-wide/from16 v6, p4

    .line 27
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 30
    iget v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 32
    const-wide v12, 0x10500000003L

    .line 37
    invoke-virtual {p1, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 40
    const-wide v1, 0x10500000004L

    .line 45
    iget v3, v0, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 47
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 50
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    .line 52
    if-eqz v1, :cond_0

    .line 54
    const/4 v5, 0x1

    .line 55
    const/4 v6, 0x1

    .line 56
    const-wide v3, 0x10b00000005L

    .line 61
    const/4 v7, 0x1

    .line 62
    const/4 v8, 0x0

    .line 63
    move-object v2, p1

    .line 64
    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 67
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 69
    const-wide v2, 0x10900000001L

    .line 74
    if-eqz v1, :cond_2

    .line 76
    const-wide v4, 0x10b00000006L

    .line 81
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 84
    move-result-wide v4

    .line 85
    iget-object v6, v1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    .line 87
    invoke-virtual {p1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 90
    const-wide v6, 0x10500000002L

    .line 95
    iget v8, v1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    .line 97
    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 100
    iget v6, v1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    .line 102
    invoke-virtual {p1, v12, v13, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 105
    iget-object v6, v1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 107
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 110
    move-result v6

    .line 111
    const/4 v7, 0x0

    .line 112
    :goto_0
    if-ge v7, v6, :cond_1

    .line 114
    iget-object v8, v1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 116
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 119
    move-result-object v8

    .line 120
    check-cast v8, Lcom/android/server/uri/GrantUri;

    .line 122
    const-wide v12, 0x20b00000004L

    .line 127
    invoke-virtual {v8, p1, v12, v13}, Lcom/android/server/uri/GrantUri;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 130
    add-int/lit8 v7, v7, 0x1

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 136
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 138
    if-eqz v1, :cond_5

    .line 140
    const-wide v4, 0x10b00000007L

    .line 145
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 148
    move-result-wide v4

    .line 149
    iget-object v0, v1, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 158
    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, v1, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 161
    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 166
    move-result-object v0

    .line 167
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_3

    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Lcom/android/server/uri/UriPermission;

    .line 179
    iget-object v2, v2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 181
    const-wide v6, 0x20b00000002L

    .line 186
    invoke-virtual {v2, p1, v6, v7}, Lcom/android/server/uri/GrantUri;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 189
    goto :goto_1

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    goto :goto_3

    .line 192
    :cond_3
    iget-object v0, v1, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 194
    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 199
    move-result-object v0

    .line 200
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    move-result v2

    .line 204
    if-eqz v2, :cond_4

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    move-result-object v2

    .line 210
    check-cast v2, Lcom/android/server/uri/UriPermission;

    .line 212
    iget-object v2, v2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 214
    const-wide v6, 0x20b00000003L

    .line 219
    invoke-virtual {v2, p1, v6, v7}, Lcom/android/server/uri/GrantUri;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 222
    goto :goto_2

    .line 223
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 227
    goto :goto_4

    .line 228
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    throw v0

    .line 230
    :cond_5
    :goto_4
    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 233
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x80

    .line 8
    const-string v1, "ServiceRecord{"

    .line 10
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    .line 16
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const/16 v2, 0x20

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, " StartItem "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 45
    move-result v1

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, " id="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    .line 60
    const/16 v2, 0x7d

    .line 62
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    .line 68
    return-object v0
.end method
