.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/content/ContentResolver;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string/jumbo v1, "managed_provisioning_dpc_downloaded"

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v0, 0x1

    .line 23
    if-ne p0, v0, :cond_0

    .line 24
    .line 25
    move v2, v0

    .line 26
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_0
    check-cast p0, Landroid/content/Context;

    .line 32
    .line 33
    const-class v0, Landroid/hardware/usb/UsbManager;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const-class v0, Landroid/hardware/usb/UsbManager;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Landroid/hardware/usb/UsbManager;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getUsbHalVersion()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const/16 v0, 0xd

    .line 54
    .line 55
    if-lt p0, v0, :cond_1

    .line 56
    .line 57
    const/4 p0, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 p0, 0x0

    .line 60
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_1
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v0

    .line 70
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    :goto_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-ge v2, v3, :cond_3

    .line 83
    .line 84
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    new-instance v4, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 103
    .line 104
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Ljava/util/Map;

    .line 109
    .line 110
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_2

    .line 123
    .line 124
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Landroid/app/admin/PolicyKey;

    .line 129
    .line 130
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    check-cast v6, Ljava/util/Map;

    .line 135
    .line 136
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 137
    .line 138
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    check-cast v7, Ljava/util/Map;

    .line 143
    .line 144
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    check-cast v7, Lcom/android/server/devicepolicy/PolicyState;

    .line 149
    .line 150
    invoke-virtual {v7}, Lcom/android/server/devicepolicy/PolicyState;->getParcelablePolicyState()Landroid/app/admin/PolicyState;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catchall_0
    move-exception p0

    .line 159
    goto :goto_4

    .line 160
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 164
    .line 165
    check-cast v2, Ljava/util/HashMap;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-nez v2, :cond_4

    .line 172
    .line 173
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 174
    .line 175
    new-instance v3, Ljava/util/HashMap;

    .line 176
    .line 177
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 184
    .line 185
    check-cast v2, Ljava/util/HashMap;

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_4

    .line 200
    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 206
    .line 207
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 208
    .line 209
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Ljava/util/Map;

    .line 214
    .line 215
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 216
    .line 217
    check-cast v5, Ljava/util/HashMap;

    .line 218
    .line 219
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    check-cast v5, Lcom/android/server/devicepolicy/PolicyState;

    .line 224
    .line 225
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/PolicyState;->getParcelablePolicyState()Landroid/app/admin/PolicyState;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_4
    new-instance p0, Landroid/app/admin/DevicePolicyState;

    .line 234
    .line 235
    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyState;-><init>(Ljava/util/Map;)V

    .line 236
    .line 237
    .line 238
    monitor-exit v0

    .line 239
    return-object p0

    .line 240
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    throw p0

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
