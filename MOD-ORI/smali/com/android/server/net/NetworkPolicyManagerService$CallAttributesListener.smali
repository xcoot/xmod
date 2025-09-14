.class public final Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallAttributesListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallStatesChanged(Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v2, v0, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "VZW-"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 25
    .line 26
    const-string v0, "ATT"

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 38
    .line 39
    const-string v0, "TMO"

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 53
    .line 54
    const-string/jumbo v0, "video"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 64
    .line 65
    const-string v1, "activevideo"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 72
    .line 73
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 74
    .line 75
    const-string/jumbo v4, "epdg"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    iput-boolean v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    .line 83
    .line 84
    const-string v1, "NetworkPolicy"

    .line 85
    .line 86
    const-string/jumbo v3, "onCallStatesChanged - hasVideoCall: "

    .line 87
    .line 88
    .line 89
    const-string v4, ", hasActiveVideoCall: "

    .line 90
    .line 91
    const-string v5, ", mHasEpdgCall: "

    .line 92
    .line 93
    invoke-static {v3, p1, v4, v0, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 98
    .line 99
    iget-boolean v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    .line 100
    .line 101
    invoke-static {v1, v3, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 105
    .line 106
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 107
    .line 108
    if-eq v1, p1, :cond_3

    .line 109
    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 113
    .line 114
    iput-boolean v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 115
    .line 116
    const-string p1, "NetworkPolicy"

    .line 117
    .line 118
    const-string v0, "Video call start."

    .line 119
    .line 120
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 124
    .line 125
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 126
    .line 127
    monitor-enter v0

    .line 128
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 131
    .line 132
    .line 133
    monitor-exit v0

    .line 134
    goto :goto_0

    .line 135
    :catchall_0
    move-exception p0

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    throw p0

    .line 138
    :cond_2
    if-nez p1, :cond_3

    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 141
    .line 142
    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 145
    .line 146
    iput-boolean v2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    .line 147
    .line 148
    iput-boolean v2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    .line 149
    .line 150
    const-string p1, "NetworkPolicy"

    .line 151
    .line 152
    const-string v0, "Video call end."

    .line 153
    .line 154
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 158
    .line 159
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 160
    .line 161
    monitor-enter p1

    .line 162
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 175
    .line 176
    .line 177
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 180
    .line 181
    .line 182
    monitor-exit p1

    .line 183
    goto :goto_0

    .line 184
    :catchall_1
    move-exception p0

    .line 185
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    throw p0

    .line 187
    :cond_3
    :goto_0
    return-void
.end method
