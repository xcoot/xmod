.class public final synthetic Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_b

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    const/4 v1, -0x1

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 33
    move-result v2

    .line 34
    sparse-switch v2, :sswitch_data_0

    .line 37
    goto/16 :goto_1

    .line 39
    :sswitch_0
    const-string/jumbo v2, "smart_suggestion_supported_modes"

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 48
    goto/16 :goto_1

    .line 50
    :cond_1
    const/16 v1, 0x9

    .line 52
    goto/16 :goto_1

    .line 54
    :sswitch_1
    const-string/jumbo v2, "pcc_use_fallback"

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_2

    .line 63
    goto/16 :goto_1

    .line 65
    :cond_2
    const/16 v1, 0x8

    .line 67
    goto/16 :goto_1

    .line 69
    :sswitch_2
    const-string/jumbo v2, "compat_mode_allowed_packages"

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_3

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/4 v1, 0x7

    .line 80
    goto :goto_1

    .line 81
    :sswitch_3
    const-string v2, "android.service.autofill.autofill_credman_integration"

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_4

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    const/4 v1, 0x6

    .line 91
    goto :goto_1

    .line 92
    :sswitch_4
    const-string/jumbo v2, "pcc_classification_hints"

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_5

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    const/4 v1, 0x5

    .line 103
    goto :goto_1

    .line 104
    :sswitch_5
    const-string v2, "augmented_service_request_timeout"

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v2

    .line 110
    if-nez v2, :cond_6

    .line 112
    goto :goto_1

    .line 113
    :cond_6
    const/4 v1, 0x4

    .line 114
    goto :goto_1

    .line 115
    :sswitch_6
    const-string/jumbo v2, "fill_fields_from_current_session_only"

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_7

    .line 124
    goto :goto_1

    .line 125
    :cond_7
    const/4 v1, 0x3

    .line 126
    goto :goto_1

    .line 127
    :sswitch_7
    const-string v2, "augmented_service_idle_unbind_timeout"

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_8

    .line 135
    goto :goto_1

    .line 136
    :cond_8
    const/4 v1, 0x2

    .line 137
    goto :goto_1

    .line 138
    :sswitch_8
    const-string/jumbo v2, "prefer_provider_over_pcc"

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_9

    .line 147
    goto :goto_1

    .line 148
    :cond_9
    const/4 v1, 0x1

    .line 149
    goto :goto_1

    .line 150
    :sswitch_9
    const-string/jumbo v2, "pcc_classification_enabled"

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_a

    .line 159
    goto :goto_1

    .line 160
    :cond_a
    const/4 v1, 0x0

    .line 161
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 164
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 166
    const-string v2, "Ignoring change on "

    .line 168
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    goto/16 :goto_0

    .line 177
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 186
    move-result-object v0

    .line 187
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_0

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 199
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 201
    monitor-enter v2

    .line 202
    :try_start_0
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 204
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 207
    monitor-exit v2

    .line 208
    goto :goto_2

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    throw p0

    .line 212
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->setDeviceConfigProperties()V

    .line 215
    goto/16 :goto_0

    .line 217
    :cond_b
    return-void

    .line 218
    nop

    .line 219
    :sswitch_data_0
    .sparse-switch
        -0x64399bc9 -> :sswitch_9
        -0x6201eafc -> :sswitch_8
        -0x5c32f116 -> :sswitch_7
        -0x3ccf549a -> :sswitch_6
        -0x3adc2628 -> :sswitch_5
        0x84f9142 -> :sswitch_4
        0x14aa0258 -> :sswitch_3
        0x45a52bc3 -> :sswitch_2
        0x45bae5a9 -> :sswitch_1
        0x65df5c5a -> :sswitch_0
    .end sparse-switch

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
