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

    .line 3
    iput-object p2, p0, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 5
    check-cast p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    iget-object v0, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    :try_start_0
    iget-object v2, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_0

    .line 22
    iget-object v2, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 27
    move-result v2

    .line 28
    const-string/jumbo v3, "finder,"

    .line 31
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    const-string v3, "[Default SMS app]"

    .line 36
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    const-string v3, ","

    .line 41
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 47
    const-string v3, ","

    .line 49
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    iget-object v3, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/String;

    .line 60
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    const-string v3, ","

    .line 65
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    iget-object v3, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    .line 70
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 77
    const-string v3, ","

    .line 79
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    iget-object v3, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 84
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Ljava/lang/String;

    .line 90
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 96
    add-int/lit8 v1, v1, 0x1

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

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    const-string v1, "App type: "

    .line 115
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    const-string v1, "[Default SMS app]"

    .line 120
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 126
    iget-object v1, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLock:Ljava/lang/Object;

    .line 128
    monitor-enter v1

    .line 129
    const/4 v2, 0x0

    .line 130
    :goto_2
    :try_start_1
    iget-object v3, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 132
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 135
    move-result v3

    .line 136
    if-ge v2, v3, :cond_1

    .line 138
    iget-object v3, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 140
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 143
    move-result v3

    .line 144
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    const-string v4, "  User: "

    .line 149
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 155
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 158
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    const-string v4, "    Package: "

    .line 163
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    iget-object v4, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 168
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Ljava/lang/String;

    .line 174
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 180
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    const-string v4, "    Service: "

    .line 185
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    iget-object v4, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    .line 190
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 200
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    const-string v4, "    Message: "

    .line 205
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    iget-object v4, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 210
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Ljava/lang/String;

    .line 216
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 222
    add-int/lit8 v2, v2, 0x1

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
