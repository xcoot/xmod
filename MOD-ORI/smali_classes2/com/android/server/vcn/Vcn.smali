.class public final Lcom/android/server/vcn/Vcn;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;


# instance fields
.field public mConfig:Landroid/net/vcn/VcnConfig;

.field public volatile mCurrentStatus:I

.field public final mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

.field public mIsMobileDataEnabled:Z

.field public mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public final mMobileDataSettingsObserver:Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;

.field public final mMobileDataStateListeners:Ljava/util/Map;

.field public final mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

.field public final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field public final mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

.field public final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field public final mVcnGatewayConnections:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/server/vcn/Vcn;->CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;Lcom/android/server/vcn/Vcn$Dependencies;)V
    .locals 2

    .line 1
    const-string v0, "Missing vcnContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 32
    .line 33
    const-string v0, "Missing subscriptionGroup"

    .line 34
    .line 35
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 39
    .line 40
    const-string p2, "Missing vcnCallback"

    .line 41
    .line 42
    invoke-static {p5, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iput-object p5, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    .line 46
    .line 47
    const-string p2, "Missing deps"

    .line 48
    .line 49
    invoke-static {p6, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iput-object p6, p0, Lcom/android/server/vcn/Vcn;->mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

    .line 53
    .line 54
    new-instance p2, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    .line 55
    .line 56
    invoke-direct {p2, p0}, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;-><init>(Lcom/android/server/vcn/Vcn;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    .line 60
    .line 61
    new-instance p5, Lcom/android/server/vcn/Vcn$VcnContentResolver;

    .line 62
    .line 63
    invoke-direct {p5, p1}, Lcom/android/server/vcn/Vcn$VcnContentResolver;-><init>(Lcom/android/server/vcn/VcnContext;)V

    .line 64
    .line 65
    .line 66
    new-instance p6, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;

    .line 67
    .line 68
    invoke-direct {p6, p0, p0}, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;-><init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;)V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v0, "mobile_data"

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object p5, p5, Lcom/android/server/vcn/Vcn$VcnContentResolver;->mImpl:Landroid/content/ContentResolver;

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    invoke-virtual {p5, v0, v1, p6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    .line 83
    .line 84
    const-string p5, "Missing config"

    .line 85
    .line 86
    invoke-static {p3, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iput-object p3, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    .line 90
    .line 91
    const-string p3, "Missing snapshot"

    .line 92
    .line 93
    invoke-static {p4, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    iput-object p4, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getMobileDataStatus()Z

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    iput-boolean p3, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->updateMobileDataStateListeners()V

    .line 105
    .line 106
    .line 107
    iget-object p0, p1, Lcom/android/server/vcn/VcnContext;->mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 108
    .line 109
    invoke-virtual {p0, p2}, Lcom/android/server/vcn/VcnNetworkProvider;->registerListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Vcn ("

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "):"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "mCurrentStatus: "

    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "mIsMobileDataEnabled: "

    .line 55
    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-boolean v2, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 72
    .line 73
    .line 74
    const-string/jumbo v0, "mVcnGatewayConnections:"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 84
    .line 85
    check-cast p0, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_9

    .line 100
    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 106
    .line 107
    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 110
    .line 111
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v3, "VcnGatewayConnection ("

    .line 115
    .line 116
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 120
    .line 121
    invoke-virtual {v3}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 139
    .line 140
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v3, "Current state: "

    .line 144
    .line 145
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    const/4 v4, 0x0

    .line 153
    if-nez v3, :cond_0

    .line 154
    .line 155
    move-object v3, v4

    .line 156
    goto :goto_1

    .line 157
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v3, "mIsQuitting: "

    .line 182
    .line 183
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    .line 187
    .line 188
    iget-boolean v3, v3, Lcom/android/server/vcn/util/OneWayBoolean;->mValue:Z

    .line 189
    .line 190
    const-string v5, "mIsInSafeMode: "

    .line 191
    .line 192
    invoke-static {v2, v3, p1, v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    iget-boolean v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    .line 197
    .line 198
    const-string v5, "mCurrentToken: "

    .line 199
    .line 200
    invoke-static {v2, v3, p1, v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    iget v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 205
    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v3, "mFailedAttempts: "

    .line 219
    .line 220
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    .line 224
    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string/jumbo v3, "mNetworkAgent.getNetwork(): "

    .line 238
    .line 239
    .line 240
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 244
    .line 245
    if-nez v3, :cond_1

    .line 246
    .line 247
    move-object v3, v4

    .line 248
    goto :goto_2

    .line 249
    :cond_1
    iget-object v3, v3, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;

    .line 250
    .line 251
    invoke-virtual {v3}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 266
    .line 267
    .line 268
    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    const-string v3, "UnderlyingNetworkController:"

    .line 274
    .line 275
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 279
    .line 280
    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v5, "Carrier WiFi Entry Threshold: "

    .line 284
    .line 285
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-object v5, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 289
    .line 290
    const/16 v6, -0x46

    .line 291
    .line 292
    if-eqz v5, :cond_2

    .line 293
    .line 294
    iget-object v5, v5, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 295
    .line 296
    const-string/jumbo v7, "vcn_network_selection_wifi_entry_rssi_threshold"

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5, v7, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string v5, "Carrier WiFi Exit Threshold: "

    .line 316
    .line 317
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object v5, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 321
    .line 322
    const/16 v6, -0x4a

    .line 323
    .line 324
    if-eqz v5, :cond_3

    .line 325
    .line 326
    iget-object v5, v5, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 327
    .line 328
    const-string/jumbo v7, "vcn_network_selection_wifi_exit_rssi_threshold"

    .line 329
    .line 330
    .line 331
    invoke-virtual {v5, v7, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v5, "Currently selected: "

    .line 348
    .line 349
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-object v5, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 353
    .line 354
    if-nez v5, :cond_4

    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_4
    iget-object v4, v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 358
    .line 359
    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    const-string v3, "VcnUnderlyingNetworkTemplate list:"

    .line 370
    .line 371
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 375
    .line 376
    .line 377
    iget-object v3, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 378
    .line 379
    invoke-virtual {v3}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    const/4 v4, 0x0

    .line 388
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    if-eqz v5, :cond_5

    .line 393
    .line 394
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    check-cast v5, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    .line 399
    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    const-string v7, "Priority index: "

    .line 403
    .line 404
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v5, p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 418
    .line 419
    .line 420
    add-int/lit8 v4, v4, 0x1

    .line 421
    .line 422
    goto :goto_4

    .line 423
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 424
    .line 425
    .line 426
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 427
    .line 428
    .line 429
    const-string v3, "Underlying networks:"

    .line 430
    .line 431
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 435
    .line 436
    .line 437
    iget-object v3, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 438
    .line 439
    if-eqz v3, :cond_7

    .line 440
    .line 441
    invoke-virtual {v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getSortedUnderlyingNetworks()Ljava/util/TreeSet;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    if-eqz v3, :cond_7

    .line 454
    .line 455
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    check-cast v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 460
    .line 461
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    const-string v4, "UnderlyingNetworkEvaluator:"

    .line 465
    .line 466
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 470
    .line 471
    .line 472
    iget-object v4, v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mNetworkRecordBuilder:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 473
    .line 474
    invoke-virtual {v4}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    if-eqz v5, :cond_6

    .line 479
    .line 480
    invoke-virtual {v4}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->build()Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    const-string v5, "UnderlyingNetworkRecord:"

    .line 485
    .line 486
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 490
    .line 491
    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    const-string/jumbo v6, "mNetwork: "

    .line 495
    .line 496
    .line 497
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    iget-object v6, v4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 501
    .line 502
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v5

    .line 509
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    const-string/jumbo v6, "mNetworkCapabilities: "

    .line 515
    .line 516
    .line 517
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    iget-object v6, v4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 521
    .line 522
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    const-string/jumbo v6, "mLinkProperties: "

    .line 535
    .line 536
    .line 537
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    iget-object v4, v4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 541
    .line 542
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 553
    .line 554
    .line 555
    goto :goto_6

    .line 556
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string v6, "UnderlyingNetworkRecord incomplete: mNetwork: "

    .line 559
    .line 560
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    iget-object v4, v4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    .line 564
    .line 565
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    const-string v5, "mIsSelected: "

    .line 578
    .line 579
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    iget-boolean v5, v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsSelected:Z

    .line 583
    .line 584
    const-string/jumbo v6, "mPriorityClass: "

    .line 585
    .line 586
    .line 587
    invoke-static {v4, v5, p1, v6}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    iget v5, v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mPriorityClass:I

    .line 592
    .line 593
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    .line 604
    .line 605
    const-string v5, "mIsPenalized: "

    .line 606
    .line 607
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    iget-boolean v3, v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsPenalized:Z

    .line 611
    .line 612
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 623
    .line 624
    .line 625
    goto/16 :goto_5

    .line 626
    .line 627
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 628
    .line 629
    .line 630
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 631
    .line 632
    .line 633
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 634
    .line 635
    .line 636
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 637
    .line 638
    .line 639
    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 640
    .line 641
    if-nez v2, :cond_8

    .line 642
    .line 643
    const-string v0, "mIkeSession: null"

    .line 644
    .line 645
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    goto :goto_7

    .line 649
    :cond_8
    const-string v2, "mIkeSession:"

    .line 650
    .line 651
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    :try_start_0
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 655
    .line 656
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 657
    .line 658
    invoke-virtual {v0, p1}, Landroid/net/ipsec/ike/IkeSession;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .line 660
    .line 661
    goto :goto_7

    .line 662
    :catch_0
    move-exception v0

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    const-string v3, "Failed to dump IkeSession: "

    .line 666
    .line 667
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    const-string v2, "VcnGatewayConnection"

    .line 678
    .line 679
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    :goto_7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 683
    .line 684
    .line 685
    goto/16 :goto_0

    .line 686
    .line 687
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 688
    .line 689
    .line 690
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 691
    .line 692
    .line 693
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 694
    .line 695
    .line 696
    return-void
.end method

.method public final getLogPrefix()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Landroid/os/ParcelUuid;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "-"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, ") "

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final getMobileDataStatus()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-class v3, Landroid/telephony/TelephonyManager;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_1
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public getVcnGatewayConnectionConfigMap()Ljava/util/Map;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public getVcnGatewayConnections()Ljava/util/Set;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 4
    .line 5
    check-cast p0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eq v0, v2, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    if-eqz v0, :cond_23

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v0, v3, :cond_1b

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eq v0, v2, :cond_d

    .line 21
    .line 22
    if-eq v0, v1, :cond_c

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    if-eq v0, v5, :cond_5

    .line 26
    .line 27
    const/4 v1, 0x5

    .line 28
    if-eq v0, v1, :cond_4

    .line 29
    .line 30
    const/16 v1, 0x64

    .line 31
    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Unknown msg.what: "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget p1, p1, Landroid/os/Message;->what:I

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_f

    .line 54
    .line 55
    :cond_1
    const-string p1, "Tearing down"

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v0, "Vcn"

    .line 77
    .line 78
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/android/server/vcn/VcnContext;->mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/android/server/vcn/VcnNetworkProvider;->unregisterListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 91
    .line 92
    check-cast p1, Ljava/util/HashMap;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    .line 119
    .line 120
    check-cast p1, Landroid/util/ArrayMap;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 143
    .line 144
    iget-object v1, v1, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    const-class v2, Landroid/telephony/TelephonyManager;

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_3
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    .line 159
    .line 160
    check-cast p1, Landroid/util/ArrayMap;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 163
    .line 164
    .line 165
    iput v3, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 166
    .line 167
    goto/16 :goto_f

    .line 168
    .line 169
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->handleMobileDataToggled()V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_f

    .line 173
    .line 174
    :cond_5
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 175
    .line 176
    check-cast p1, Ljava/util/HashMap;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 197
    .line 198
    iget-object v5, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 199
    .line 200
    invoke-virtual {v5}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 201
    .line 202
    .line 203
    iget-boolean v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    .line 204
    .line 205
    if-eqz v0, :cond_6

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_7
    move v3, v4

    .line 209
    :goto_2
    iget p1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 210
    .line 211
    if-eqz v3, :cond_8

    .line 212
    .line 213
    move v0, v1

    .line 214
    goto :goto_3

    .line 215
    :cond_8
    move v0, v2

    .line 216
    :goto_3
    iput v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 217
    .line 218
    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 219
    .line 220
    if-eq p1, v0, :cond_27

    .line 221
    .line 222
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    .line 223
    .line 224
    check-cast p1, Lcom/android/server/VcnManagementService$VcnCallbackImpl;

    .line 225
    .line 226
    iget-object v0, p1, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    .line 227
    .line 228
    iget-object v0, v0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 229
    .line 230
    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v4, p1, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    .line 232
    .line 233
    iget-object v4, v4, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 234
    .line 235
    iget-object v5, p1, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    .line 236
    .line 237
    check-cast v4, Landroid/util/ArrayMap;

    .line 238
    .line 239
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-nez v4, :cond_9

    .line 244
    .line 245
    monitor-exit v0

    .line 246
    goto :goto_4

    .line 247
    :catchall_0
    move-exception p0

    .line 248
    goto :goto_6

    .line 249
    :cond_9
    if-eqz v3, :cond_a

    .line 250
    .line 251
    move v2, v1

    .line 252
    :cond_a
    iget-object v3, p1, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    .line 253
    .line 254
    invoke-virtual {v3}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    .line 255
    .line 256
    .line 257
    iget-object v3, p1, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    .line 258
    .line 259
    iget-object p1, p1, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    .line 260
    .line 261
    invoke-virtual {v3, p1, v2}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    .line 262
    .line 263
    .line 264
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_4
    iget p1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 266
    .line 267
    if-ne p1, v1, :cond_b

    .line 268
    .line 269
    const-string p1, "entered"

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_b
    const-string p1, "exited"

    .line 273
    .line 274
    :goto_5
    const-string v0, "Safe mode "

    .line 275
    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_f

    .line 284
    .line 285
    :goto_6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    throw p0

    .line 287
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast p1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 290
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v1, "VcnGatewayConnection quit: "

    .line 294
    .line 295
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 309
    .line 310
    check-cast v0, Ljava/util/HashMap;

    .line 311
    .line 312
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 316
    .line 317
    iget-object p1, p1, Lcom/android/server/vcn/VcnContext;->mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 318
    .line 319
    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    .line 320
    .line 321
    invoke-virtual {p1, p0}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_f

    .line 325
    .line 326
    :cond_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 329
    .line 330
    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 331
    .line 332
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 333
    .line 334
    check-cast p1, Ljava/util/HashMap;

    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_1a

    .line 349
    .line 350
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 355
    .line 356
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    const-string v2, "Missing snapshot"

    .line 362
    .line 363
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 367
    .line 368
    invoke-virtual {v2}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 369
    .line 370
    .line 371
    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 372
    .line 373
    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 374
    .line 375
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    iget-object v5, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 379
    .line 380
    iput-object v1, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 381
    .line 382
    iget-object v6, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 383
    .line 384
    invoke-virtual {v1, v6}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getCarrierConfigForSubGrp(Landroid/os/ParcelUuid;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    iput-object v6, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 389
    .line 390
    iget-object v6, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mUnderlyingNetworkRecords:Ljava/util/Map;

    .line 391
    .line 392
    check-cast v6, Landroid/util/ArrayMap;

    .line 393
    .line 394
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 403
    .line 404
    .line 405
    move-result v7

    .line 406
    if-eqz v7, :cond_17

    .line 407
    .line 408
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    check-cast v7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 413
    .line 414
    iget-object v8, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 415
    .line 416
    invoke-virtual {v8}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    .line 417
    .line 418
    .line 419
    move-result-object v8

    .line 420
    iget-object v9, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 421
    .line 422
    iget-object v10, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 423
    .line 424
    iget-object v11, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 425
    .line 426
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->updatePriorityClass(Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V

    .line 427
    .line 428
    .line 429
    sget-object v8, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->PENALTY_TIMEOUT_MINUTES_DEFAULT:[I

    .line 430
    .line 431
    if-eqz v11, :cond_10

    .line 432
    .line 433
    iget-object v9, v11, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 434
    .line 435
    const-string/jumbo v10, "vcn_network_selection_penalty_timeout_minutes_list"

    .line 436
    .line 437
    .line 438
    invoke-virtual {v9, v10}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    .line 439
    .line 440
    .line 441
    move-result-object v9

    .line 442
    if-nez v9, :cond_f

    .line 443
    .line 444
    goto :goto_8

    .line 445
    :cond_f
    move-object v8, v9

    .line 446
    :cond_10
    :goto_8
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 447
    .line 448
    aget v8, v8, v4

    .line 449
    .line 450
    int-to-long v12, v8

    .line 451
    invoke-virtual {v9, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 452
    .line 453
    .line 454
    move-result-wide v8

    .line 455
    iput-wide v8, v7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mPenalizedTimeoutMs:J

    .line 456
    .line 457
    iget-object v7, v7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mMetricMonitors:Ljava/util/List;

    .line 458
    .line 459
    check-cast v7, Ljava/util/ArrayList;

    .line 460
    .line 461
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    :cond_11
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 466
    .line 467
    .line 468
    move-result v8

    .line 469
    if-eqz v8, :cond_e

    .line 470
    .line 471
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v8

    .line 475
    check-cast v8, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;

    .line 476
    .line 477
    check-cast v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 478
    .line 479
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    const/16 v9, 0x14

    .line 483
    .line 484
    if-eqz v11, :cond_12

    .line 485
    .line 486
    iget-object v10, v11, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 487
    .line 488
    const-string/jumbo v12, "vcn_network_selection_poll_ipsec_state_interval_seconds"

    .line 489
    .line 490
    .line 491
    invoke-virtual {v10, v12, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 492
    .line 493
    .line 494
    move-result v9

    .line 495
    :cond_12
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 496
    .line 497
    int-to-long v12, v9

    .line 498
    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 499
    .line 500
    .line 501
    move-result-wide v9

    .line 502
    iput-wide v9, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mPollIpSecStateIntervalMs:J

    .line 503
    .line 504
    invoke-static {}, Landroid/net/vcn/Flags;->handleSeqNumLeap()Z

    .line 505
    .line 506
    .line 507
    move-result v9

    .line 508
    if-eqz v9, :cond_14

    .line 509
    .line 510
    const/16 v9, 0xc

    .line 511
    .line 512
    if-eqz v11, :cond_13

    .line 513
    .line 514
    iget-object v10, v11, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 515
    .line 516
    const-string/jumbo v12, "vcn_network_selection_ipsec_packet_loss_percent_threshold"

    .line 517
    .line 518
    .line 519
    invoke-virtual {v10, v12, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 520
    .line 521
    .line 522
    move-result v9

    .line 523
    :cond_13
    iput v9, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mPacketLossRatePercentThreshold:I

    .line 524
    .line 525
    invoke-static {v11}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->getMaxSeqNumIncreasePerSecond(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    .line 526
    .line 527
    .line 528
    move-result v9

    .line 529
    iput v9, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mMaxSeqNumIncreasePerSecond:I

    .line 530
    .line 531
    :cond_14
    invoke-static {}, Landroid/net/vcn/Flags;->allowDisableIpsecLossDetector()Z

    .line 532
    .line 533
    .line 534
    move-result v9

    .line 535
    if-eqz v9, :cond_11

    .line 536
    .line 537
    iget-object v9, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mInboundTransform:Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;

    .line 538
    .line 539
    const/4 v10, -0x1

    .line 540
    if-eqz v9, :cond_15

    .line 541
    .line 542
    iget v12, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mPacketLossRatePercentThreshold:I

    .line 543
    .line 544
    if-eq v12, v10, :cond_15

    .line 545
    .line 546
    move v12, v3

    .line 547
    goto :goto_a

    .line 548
    :cond_15
    move v12, v4

    .line 549
    :goto_a
    iget-boolean v13, v8, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsStarted:Z

    .line 550
    .line 551
    if-eq v12, v13, :cond_11

    .line 552
    .line 553
    const/4 v12, 0x0

    .line 554
    if-eqz v9, :cond_16

    .line 555
    .line 556
    iget v9, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mPacketLossRatePercentThreshold:I

    .line 557
    .line 558
    if-eq v9, v10, :cond_16

    .line 559
    .line 560
    iput-boolean v3, v8, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsStarted:Z

    .line 561
    .line 562
    iget-object v9, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 563
    .line 564
    iget-object v10, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mCancellationToken:Ljava/lang/Object;

    .line 565
    .line 566
    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    iput-object v12, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mLastIpSecTransformState:Landroid/net/IpSecTransformState;

    .line 570
    .line 571
    iget-object v9, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 572
    .line 573
    new-instance v10, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;

    .line 574
    .line 575
    invoke-direct {v10, v8}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;-><init>(Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;)V

    .line 576
    .line 577
    .line 578
    iget-object v8, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mCancellationToken:Ljava/lang/Object;

    .line 579
    .line 580
    const-wide/16 v12, 0x0

    .line 581
    .line 582
    invoke-virtual {v9, v10, v8, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 583
    .line 584
    .line 585
    goto :goto_9

    .line 586
    :cond_16
    iput-boolean v4, v8, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsValidationFailed:Z

    .line 587
    .line 588
    iput-boolean v4, v8, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsStarted:Z

    .line 589
    .line 590
    iget-object v9, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 591
    .line 592
    iget-object v10, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mCancellationToken:Ljava/lang/Object;

    .line 593
    .line 594
    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    iput-object v12, v8, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mLastIpSecTransformState:Landroid/net/IpSecTransformState;

    .line 598
    .line 599
    goto/16 :goto_9

    .line 600
    .line 601
    :cond_17
    iget-object v6, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 602
    .line 603
    invoke-virtual {v5, v6}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    .line 604
    .line 605
    .line 606
    move-result-object v5

    .line 607
    iget-object v6, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 608
    .line 609
    invoke-virtual {v1, v6}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    check-cast v5, Landroid/util/ArraySet;

    .line 614
    .line 615
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-eqz v1, :cond_18

    .line 620
    .line 621
    iget-object v1, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 622
    .line 623
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->isFlagNetworkMetricMonitorEnabled()Z

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    if-eqz v1, :cond_19

    .line 628
    .line 629
    invoke-static {}, Lcom/android/server/vcn/VcnContext;->isFlagIpSecTransformStateEnabled()Z

    .line 630
    .line 631
    .line 632
    move-result v1

    .line 633
    if-eqz v1, :cond_19

    .line 634
    .line 635
    invoke-virtual {v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->reevaluateNetworks()V

    .line 636
    .line 637
    .line 638
    goto :goto_b

    .line 639
    :cond_18
    invoke-virtual {v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->registerOrUpdateNetworkRequests()V

    .line 640
    .line 641
    .line 642
    :cond_19
    :goto_b
    const/16 v1, 0x9

    .line 643
    .line 644
    const/high16 v2, -0x80000000

    .line 645
    .line 646
    invoke-virtual {v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    .line 647
    .line 648
    .line 649
    goto/16 :goto_7

    .line 650
    .line 651
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->updateMobileDataStateListeners()V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->handleMobileDataToggled()V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_f

    .line 658
    .line 659
    :cond_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast p1, Landroid/net/NetworkRequest;

    .line 662
    .line 663
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 667
    .line 668
    check-cast v0, Ljava/util/HashMap;

    .line 669
    .line 670
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    if-eqz v1, :cond_1d

    .line 683
    .line 684
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 689
    .line 690
    invoke-virtual {p0, p1, v1}, Lcom/android/server/vcn/Vcn;->isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z

    .line 691
    .line 692
    .line 693
    move-result v1

    .line 694
    if-eqz v1, :cond_1c

    .line 695
    .line 696
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    goto/16 :goto_f

    .line 700
    .line 701
    :cond_1d
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    .line 702
    .line 703
    invoke-virtual {v0}, Landroid/net/vcn/VcnConfig;->getGatewayConnectionConfigs()Ljava/util/Set;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    :cond_1e
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    if-eqz v1, :cond_22

    .line 716
    .line 717
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 722
    .line 723
    invoke-virtual {p0, p1, v1}, Lcom/android/server/vcn/Vcn;->isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z

    .line 724
    .line 725
    .line 726
    move-result v2

    .line 727
    if-eqz v2, :cond_1e

    .line 728
    .line 729
    iget-boolean v2, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 730
    .line 731
    if-eqz v2, :cond_1f

    .line 732
    .line 733
    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    goto :goto_d

    .line 738
    :cond_1f
    new-instance v2, Landroid/util/ArraySet;

    .line 739
    .line 740
    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    .line 741
    .line 742
    .line 743
    move-result-object v3

    .line 744
    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 745
    .line 746
    .line 747
    sget-object v3, Lcom/android/server/vcn/Vcn;->CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

    .line 748
    .line 749
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 750
    .line 751
    .line 752
    :goto_d
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 753
    .line 754
    .line 755
    move-result v2

    .line 756
    if-eqz v2, :cond_20

    .line 757
    .line 758
    goto :goto_c

    .line 759
    :cond_20
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 760
    .line 761
    check-cast v0, Ljava/util/HashMap;

    .line 762
    .line 763
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    if-eqz v0, :cond_21

    .line 768
    .line 769
    const-string p1, "Attempted to bring up VcnGatewayConnection for config with existing VcnGatewayConnection"

    .line 770
    .line 771
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    goto/16 :goto_f

    .line 775
    .line 776
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 777
    .line 778
    const-string v2, "Bringing up new VcnGatewayConnection for request "

    .line 779
    .line 780
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object p1

    .line 790
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    iget-object v4, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 794
    .line 795
    iget-object v5, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 796
    .line 797
    new-instance v7, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;

    .line 798
    .line 799
    invoke-direct {v7, p0, v1}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;-><init>(Lcom/android/server/vcn/Vcn;Landroid/net/vcn/VcnGatewayConnectionConfig;)V

    .line 800
    .line 801
    .line 802
    iget-boolean v8, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 803
    .line 804
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

    .line 805
    .line 806
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    .line 808
    .line 809
    new-instance p1, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 810
    .line 811
    new-instance v9, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    .line 812
    .line 813
    invoke-direct {v9}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;-><init>()V

    .line 814
    .line 815
    .line 816
    iget-object v3, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 817
    .line 818
    move-object v2, p1

    .line 819
    move-object v6, v1

    .line 820
    invoke-direct/range {v2 .. v9}, Lcom/android/server/vcn/VcnGatewayConnection;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;ZLcom/android/server/vcn/VcnGatewayConnection$Dependencies;)V

    .line 821
    .line 822
    .line 823
    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 824
    .line 825
    check-cast p0, Ljava/util/HashMap;

    .line 826
    .line 827
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    goto/16 :goto_f

    .line 831
    .line 832
    :cond_22
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    goto/16 :goto_f

    .line 836
    .line 837
    :cond_23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 838
    .line 839
    check-cast p1, Landroid/net/vcn/VcnConfig;

    .line 840
    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    .line 842
    .line 843
    const-string v1, "Config updated: old = "

    .line 844
    .line 845
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    .line 849
    .line 850
    invoke-virtual {v1}, Landroid/net/vcn/VcnConfig;->hashCode()I

    .line 851
    .line 852
    .line 853
    move-result v1

    .line 854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    const-string v1, "; new = "

    .line 858
    .line 859
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    invoke-virtual {p1}, Landroid/net/vcn/VcnConfig;->hashCode()I

    .line 863
    .line 864
    .line 865
    move-result v1

    .line 866
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    .line 874
    .line 875
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .line 877
    .line 878
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v2

    .line 882
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    const-string v1, "Vcn"

    .line 893
    .line 894
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .line 896
    .line 897
    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    .line 898
    .line 899
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 900
    .line 901
    check-cast p1, Ljava/util/HashMap;

    .line 902
    .line 903
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 904
    .line 905
    .line 906
    move-result-object p1

    .line 907
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 908
    .line 909
    .line 910
    move-result-object p1

    .line 911
    :cond_24
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 912
    .line 913
    .line 914
    move-result v0

    .line 915
    if-eqz v0, :cond_26

    .line 916
    .line 917
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    check-cast v0, Ljava/util/Map$Entry;

    .line 922
    .line 923
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v1

    .line 927
    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 928
    .line 929
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 934
    .line 935
    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    .line 936
    .line 937
    invoke-virtual {v2}, Landroid/net/vcn/VcnConfig;->getGatewayConnectionConfigs()Ljava/util/Set;

    .line 938
    .line 939
    .line 940
    move-result-object v2

    .line 941
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 942
    .line 943
    .line 944
    move-result v1

    .line 945
    if-nez v1, :cond_24

    .line 946
    .line 947
    if-nez v0, :cond_25

    .line 948
    .line 949
    const-string v0, "Found gatewayConnectionConfig without GatewayConnection"

    .line 950
    .line 951
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    goto :goto_e

    .line 955
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 956
    .line 957
    const-string v2, "Config updated, restarting gateway "

    .line 958
    .line 959
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v1

    .line 973
    invoke-virtual {p0, v1}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 977
    .line 978
    .line 979
    goto :goto_e

    .line 980
    :cond_26
    iget-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 981
    .line 982
    iget-object p1, p1, Lcom/android/server/vcn/VcnContext;->mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 983
    .line 984
    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    .line 985
    .line 986
    invoke-virtual {p1, p0}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 987
    .line 988
    .line 989
    :cond_27
    :goto_f
    return-void
.end method

.method public final handleMobileDataToggled()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getMobileDataStatus()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iput-boolean v1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 8
    .line 9
    if-eq v0, v1, :cond_5

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 12
    .line 13
    check-cast v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/16 v3, 0xc

    .line 52
    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    const/4 v3, 0x2

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_0

    .line 73
    .line 74
    :cond_1
    if-nez v1, :cond_2

    .line 75
    .line 76
    const-string v1, "Found gatewayConnectionConfig without GatewayConnection"

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/server/vcn/VcnContext;->mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 93
    .line 94
    .line 95
    iget-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    const-string v0, "enabled"

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const-string v0, "disabled"

    .line 103
    .line 104
    :goto_1
    const-string v1, "Mobile data "

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    return-void
.end method

.method public isMobileDataEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x1c

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 13
    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    sget-object p2, Lcom/android/server/vcn/Vcn;->CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p1, p0}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0
.end method

.method public final logInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Vcn"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, "INFO: "

    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final logWtf(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Vcn"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, "WTF: "

    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public final updateMobileDataStateListeners()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    iget-object v6, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    .line 39
    .line 40
    check-cast v6, Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_0

    .line 47
    .line 48
    new-instance v6, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;

    .line 49
    .line 50
    invoke-direct {v6, p0}, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;-><init>(Lcom/android/server/vcn/Vcn;)V

    .line 51
    .line 52
    .line 53
    iget-object v4, v4, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    const-class v7, Landroid/telephony/TelephonyManager;

    .line 56
    .line 57
    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4, v1, v6}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    .line 71
    .line 72
    check-cast v4, Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-virtual {v4, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    .line 79
    .line 80
    check-cast p0, Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-nez v2, :cond_2

    .line 111
    .line 112
    iget-object v2, v4, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    const-class v3, Landroid/telephony/TelephonyManager;

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroid/telephony/TelephonyCallback;

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    return-void
.end method
