.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/io/PrintWriter;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$0:Ljava/io/PrintWriter;

    .line 5
    const-string p1, "  "

    .line 7
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$0:Ljava/io/PrintWriter;

    .line 8
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    .line 10
    check-cast p1, Landroid/util/Pair;

    .line 12
    check-cast p2, Ljava/util/List;

    .line 14
    const-string v1, "  "

    .line 16
    const-string/jumbo v2, "preset: "

    .line 19
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object p0

    .line 23
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, " role:"

    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    const-string p1, " devices:"

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$0:Ljava/io/PrintWriter;

    .line 56
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    .line 58
    check-cast p1, Landroid/util/Pair;

    .line 60
    check-cast p2, Ljava/util/List;

    .line 62
    const-string v1, "  "

    .line 64
    const-string/jumbo v2, "preset: "

    .line 67
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    move-result-object p0

    .line 71
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, " role:"

    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string p1, " devices:"

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    return-void

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$0:Ljava/io/PrintWriter;

    .line 104
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    .line 106
    check-cast p1, Landroid/util/Pair;

    .line 108
    check-cast p2, Ljava/util/List;

    .line 110
    const-string v1, "  "

    .line 112
    const-string/jumbo v2, "strategy: "

    .line 115
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    move-result-object p0

    .line 119
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, " role:"

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    const-string p1, " devices:"

    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    return-void

    .line 150
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$0:Ljava/io/PrintWriter;

    .line 152
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    .line 154
    check-cast p1, Landroid/util/Pair;

    .line 156
    check-cast p2, Ljava/util/List;

    .line 158
    const-string v1, "  "

    .line 160
    const-string/jumbo v2, "strategy: "

    .line 163
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    move-result-object p0

    .line 167
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, " role:"

    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 179
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    const-string p1, " devices:"

    .line 184
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    return-void

    .line 198
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$0:Ljava/io/PrintWriter;

    .line 200
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    .line 202
    check-cast p1, Ljava/lang/Integer;

    .line 204
    check-cast p2, Ljava/util/List;

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    .line 208
    const-string v2, "  "

    .line 210
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string/jumbo p0, "capturePreset:"

    .line 219
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    const-string p0, " devices:"

    .line 227
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    return-void

    .line 241
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$0:Ljava/io/PrintWriter;

    .line 243
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    .line 245
    check-cast p1, Ljava/lang/String;

    .line 247
    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    .line 251
    const-string v1, "  "

    .line 253
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->toString()Ljava/lang/String;

    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    return-void

    .line 274
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$0:Ljava/io/PrintWriter;

    .line 276
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    .line 278
    check-cast p1, Ljava/lang/Integer;

    .line 280
    check-cast p2, Ljava/util/List;

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    .line 284
    const-string v2, "  "

    .line 286
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string/jumbo p0, "strategy:"

    .line 295
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    const-string p0, " device:"

    .line 303
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object p0

    .line 313
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    return-void

    .line 317
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$0:Ljava/io/PrintWriter;

    .line 319
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    .line 321
    check-cast p1, Ljava/lang/Integer;

    .line 323
    check-cast p2, Ljava/util/List;

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    .line 327
    const-string v2, "  "

    .line 329
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string/jumbo p0, "strategy:"

    .line 338
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    const-string p0, " device:"

    .line 346
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    move-result-object p0

    .line 356
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    return-void

    .line 360
    nop

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
