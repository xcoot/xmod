.class public final synthetic Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(ILjava/io/PrintWriter;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    :try_start_0
    iget-object v2, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    iget-object v2, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const-string/jumbo v3, "finder,"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v3, "[Default SMS app]"

    .line 35
    .line 36
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v3, ","

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 45
    .line 46
    .line 47
    const-string v3, ","

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v3, ","

    .line 64
    .line 65
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const-string v3, ","

    .line 78
    .line 79
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v3, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 83
    .line 84
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_1

    .line 101
    :cond_0
    monitor-exit v0

    .line 102
    return-void

    .line 103
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0

    .line 105
    :pswitch_0
    const-string v0, "    "

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v1, "App type: "

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v1, "[Default SMS app]"

    .line 119
    .line 120
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 124
    .line 125
    .line 126
    iget-object v1, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLock:Ljava/lang/Object;

    .line 127
    .line 128
    monitor-enter v1

    .line 129
    const/4 v2, 0x0

    .line 130
    :goto_2
    :try_start_1
    iget-object v3, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 131
    .line 132
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-ge v2, v3, :cond_1

    .line 137
    .line 138
    iget-object v3, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 139
    .line 140
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v4, "  User: "

    .line 148
    .line 149
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v4, "    Package: "

    .line 162
    .line 163
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v4, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 167
    .line 168
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-string v4, "    Service: "

    .line 184
    .line 185
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v4, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    .line 189
    .line 190
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string v4, "    Message: "

    .line 204
    .line 205
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v4, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 209
    .line 210
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 220
    .line 221
    .line 222
    add-int/lit8 v2, v2, 0x1

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :catchall_1
    move-exception p0

    .line 226
    goto :goto_3

    .line 227
    :cond_1
    monitor-exit v1

    .line 228
    return-void

    .line 229
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    throw p0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
