.class public final Lcom/android/server/uri/UriPermissionOwner;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public externalToken:Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

.field public final mOwner:Ljava/lang/Object;

.field public mReadPerms:Landroid/util/ArraySet;

.field public final mService:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public mWritePerms:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "readUriPermissions="

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo p2, "writeUriPermissions="

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p1
.end method

.method public final removeUriPermission(IILcom/android/server/uri/GrantUri;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    and-int/lit8 v1, p1, 0x1

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/android/server/uri/UriPermission;

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 36
    .line 37
    invoke-virtual {p3, v5}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_0
    if-eqz p4, :cond_1

    .line 48
    .line 49
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    if-eq p2, v3, :cond_2

    .line 59
    .line 60
    iget v5, v4, Lcom/android/server/uri/UriPermission;->targetUserId:I

    .line 61
    .line 62
    if-eq p2, v5, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, p0}, Lcom/android/server/uri/UriPermission;->removeReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    iput-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 84
    .line 85
    :cond_4
    and-int/lit8 p1, p1, 0x2

    .line 86
    .line 87
    if-eqz p1, :cond_9

    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 90
    .line 91
    if-eqz p1, :cond_9

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_8

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 108
    .line 109
    if-eqz p3, :cond_5

    .line 110
    .line 111
    iget-object v4, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 112
    .line 113
    invoke-virtual {p3, v4}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_5

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    if-eqz p4, :cond_6

    .line 121
    .line 122
    iget-object v4, v1, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_6

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    if-eq p2, v3, :cond_7

    .line 132
    .line 133
    iget v4, v1, Lcom/android/server/uri/UriPermission;->targetUserId:I

    .line 134
    .line 135
    if-eq p2, v4, :cond_7

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p0}, Lcom/android/server/uri/UriPermission;->removeWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_8
    iget-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_9

    .line 155
    .line 156
    iput-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 157
    .line 158
    :cond_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    const/4 p2, 0x0

    .line 164
    :goto_2
    if-ge p2, p1, :cond_a

    .line 165
    .line 166
    iget-object p3, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 167
    .line 168
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p4

    .line 172
    check-cast p4, Lcom/android/server/uri/UriPermission;

    .line 173
    .line 174
    check-cast p3, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 175
    .line 176
    iget-object v1, p3, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 177
    .line 178
    iget-object v1, v1, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 179
    .line 180
    monitor-enter v1

    .line 181
    :try_start_1
    iget-object p3, p3, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 182
    .line 183
    invoke-virtual {p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 184
    .line 185
    .line 186
    monitor-exit v1

    .line 187
    add-int/lit8 p2, p2, 0x1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :catchall_1
    move-exception p0

    .line 191
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    throw p0

    .line 193
    :cond_a
    return-void

    .line 194
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
