.class public final synthetic Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_11

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    const/4 v2, -0x1

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 33
    move-result v3

    .line 34
    sparse-switch v3, :sswitch_data_0

    .line 37
    goto/16 :goto_1

    .line 39
    :sswitch_0
    const-string/jumbo v3, "idle_flush_frequency"

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 48
    goto/16 :goto_1

    .line 50
    :cond_0
    const/16 v2, 0x10

    .line 52
    goto/16 :goto_1

    .line 54
    :sswitch_1
    const-string/jumbo v3, "idle_unbind_timeout"

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 63
    goto/16 :goto_1

    .line 65
    :cond_1
    const/16 v2, 0xf

    .line 67
    goto/16 :goto_1

    .line 69
    :sswitch_2
    const-string/jumbo v3, "content_protection_auto_disconnect_timeout_ms"

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_2

    .line 78
    goto/16 :goto_1

    .line 80
    :cond_2
    const/16 v2, 0xe

    .line 82
    goto/16 :goto_1

    .line 84
    :sswitch_3
    const-string/jumbo v3, "content_protection_allowlist_timeout_ms"

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_3

    .line 93
    goto/16 :goto_1

    .line 95
    :cond_3
    const/16 v2, 0xd

    .line 97
    goto/16 :goto_1

    .line 99
    :sswitch_4
    const-string/jumbo v3, "max_buffer_size"

    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_4

    .line 108
    goto/16 :goto_1

    .line 110
    :cond_4
    const/16 v2, 0xc

    .line 112
    goto/16 :goto_1

    .line 114
    :sswitch_5
    const-string/jumbo v3, "content_protection_optional_groups_threshold"

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_5

    .line 123
    goto/16 :goto_1

    .line 125
    :cond_5
    const/16 v2, 0xb

    .line 127
    goto/16 :goto_1

    .line 129
    :sswitch_6
    const-string/jumbo v3, "enable_activity_start_assist_content"

    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_6

    .line 138
    goto/16 :goto_1

    .line 140
    :cond_6
    const/16 v2, 0xa

    .line 142
    goto/16 :goto_1

    .line 144
    :sswitch_7
    const-string/jumbo v3, "log_history_size"

    .line 147
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v3

    .line 151
    if-nez v3, :cond_7

    .line 153
    goto/16 :goto_1

    .line 155
    :cond_7
    const/16 v2, 0x9

    .line 157
    goto/16 :goto_1

    .line 159
    :sswitch_8
    const-string/jumbo v3, "content_protection_required_groups_config"

    .line 162
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    move-result v3

    .line 166
    if-nez v3, :cond_8

    .line 168
    goto/16 :goto_1

    .line 170
    :cond_8
    const/16 v2, 0x8

    .line 172
    goto/16 :goto_1

    .line 174
    :sswitch_9
    const-string/jumbo v3, "text_change_flush_frequency"

    .line 177
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v3

    .line 181
    if-nez v3, :cond_9

    .line 183
    goto :goto_1

    .line 184
    :cond_9
    const/4 v2, 0x7

    .line 185
    goto :goto_1

    .line 186
    :sswitch_a
    const-string/jumbo v3, "service_explicitly_enabled"

    .line 189
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result v3

    .line 193
    if-nez v3, :cond_a

    .line 195
    goto :goto_1

    .line 196
    :cond_a
    const/4 v2, 0x6

    .line 197
    goto :goto_1

    .line 198
    :sswitch_b
    const-string/jumbo v3, "content_protection_buffer_size"

    .line 201
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    move-result v3

    .line 205
    if-nez v3, :cond_b

    .line 207
    goto :goto_1

    .line 208
    :cond_b
    const/4 v2, 0x5

    .line 209
    goto :goto_1

    .line 210
    :sswitch_c
    const-string/jumbo v3, "content_protection_allowlist_delay_ms"

    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    move-result v3

    .line 217
    if-nez v3, :cond_c

    .line 219
    goto :goto_1

    .line 220
    :cond_c
    const/4 v2, 0x4

    .line 221
    goto :goto_1

    .line 222
    :sswitch_d
    const-string/jumbo v3, "content_protection_optional_groups_config"

    .line 225
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    move-result v3

    .line 229
    if-nez v3, :cond_d

    .line 231
    goto :goto_1

    .line 232
    :cond_d
    const/4 v2, 0x3

    .line 233
    goto :goto_1

    .line 234
    :sswitch_e
    const-string/jumbo v3, "logging_level"

    .line 237
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    move-result v3

    .line 241
    if-nez v3, :cond_e

    .line 243
    goto :goto_1

    .line 244
    :cond_e
    const/4 v2, 0x2

    .line 245
    goto :goto_1

    .line 246
    :sswitch_f
    const-string/jumbo v3, "enable_content_protection_receiver"

    .line 249
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    move-result v3

    .line 253
    if-nez v3, :cond_f

    .line 255
    goto :goto_1

    .line 256
    :cond_f
    const/4 v2, 0x1

    .line 257
    goto :goto_1

    .line 258
    :sswitch_10
    const-string/jumbo v3, "disable_flush_for_view_tree_appearing"

    .line 261
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    move-result v3

    .line 265
    if-nez v3, :cond_10

    .line 267
    goto :goto_1

    .line 268
    :cond_10
    const/4 v2, 0x0

    .line 269
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 272
    goto :goto_2

    .line 273
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setActivityStartAssistDataEnabled()V

    .line 276
    :goto_2
    const-string v2, "Ignoring change on "

    .line 278
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    move-result-object v1

    .line 282
    const-string v2, "ContentCaptureManagerService"

    .line 284
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    goto/16 :goto_0

    .line 289
    :pswitch_1
    const/4 v0, 0x0

    .line 290
    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDisabledByDeviceConfig(Ljava/lang/String;)V

    .line 297
    goto :goto_3

    .line 298
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setLoggingLevelFromDeviceConfig()V

    .line 301
    goto :goto_3

    .line 302
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setFineTuneParamsFromDeviceConfig()V

    .line 305
    :cond_11
    :goto_3
    return-void

    .line 306
    nop

    .line 307
    :sswitch_data_0
    .sparse-switch
        -0x7e578822 -> :sswitch_10
        -0x7844c0ed -> :sswitch_f
        -0x756f795c -> :sswitch_e
        -0x56ba5cb2 -> :sswitch_d
        -0x4d1e1e66 -> :sswitch_c
        -0x2fcca540 -> :sswitch_b
        -0x120a1673 -> :sswitch_a
        -0x8e1195c -> :sswitch_9
        -0x1fc56b3 -> :sswitch_8
        0xd94a5e7 -> :sswitch_7
        0x2c6a8394 -> :sswitch_6
        0x32ad38df -> :sswitch_5
        0x42b4ba45 -> :sswitch_4
        0x433b4afc -> :sswitch_3
        0x5cfa5017 -> :sswitch_2
        0x5d828843 -> :sswitch_1
        0x7b4a3376 -> :sswitch_0
    .end sparse-switch

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
