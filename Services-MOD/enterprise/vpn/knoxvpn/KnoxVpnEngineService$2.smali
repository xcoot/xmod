.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field public final synthetic val$action:I

.field public final synthetic val$exemptedUidList:Ljava/util/HashSet;

.field public final synthetic val$profileName:Ljava/lang/String;

.field public final synthetic val$profileProxyInfo:Landroid/net/ProxyInfo;

.field public final synthetic val$uidList:Ljava/util/HashMap;

.field public final synthetic val$vendorUid:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;ILandroid/net/ProxyInfo;Ljava/util/HashSet;II)V
    .locals 0

    .line 1
    iput p8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 5
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$profileName:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$uidList:Ljava/util/HashMap;

    .line 9
    iput p4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$vendorUid:I

    .line 11
    iput-object p5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$profileProxyInfo:Landroid/net/ProxyInfo;

    .line 13
    iput-object p6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$exemptedUidList:Ljava/util/HashSet;

    .line 15
    iput p7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$action:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "The pac configuration is being added for the application added to vpn, update AMS "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$profileName:Ljava/lang/String;

    .line 15
    const-string v2, "KnoxVpnEngineService"

    .line 17
    invoke-static {v0, v1, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 22
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAMSInstance()Lcom/android/server/am/ActivityManagerService;

    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$uidList:Ljava/util/HashMap;

    .line 28
    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$vendorUid:I

    .line 30
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$profileProxyInfo:Landroid/net/ProxyInfo;

    .line 32
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$exemptedUidList:Ljava/util/HashSet;

    .line 34
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateProxyPacConfigurationForKnoxVpn(Ljava/util/HashMap;ILandroid/net/ProxyInfo;Ljava/util/HashSet;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "The pac configuration is being added for the application added to vpn, send pac broadcast "

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$profileName:Ljava/lang/String;

    .line 46
    invoke-static {v0, v1, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 51
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$uidList:Ljava/util/HashMap;

    .line 57
    iget v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$vendorUid:I

    .line 59
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$exemptedUidList:Ljava/util/HashSet;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->sendProxyConfigBroadcast(ILjava/util/HashMap;Ljava/util/HashSet;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 69
    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$action:I

    .line 71
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$uidList:Ljava/util/HashMap;

    .line 73
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$exemptedUidList:Ljava/util/HashSet;

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkExistsEmailPackageInProfiles(ILjava/util/HashMap;Ljava/util/HashSet;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 80
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$profileName:Ljava/lang/String;

    .line 82
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$uidList:Ljava/util/HashMap;

    .line 84
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$exemptedUidList:Ljava/util/HashSet;

    .line 86
    invoke-static {v0, v1, v2, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mkillRunningProcessToApplyProxy(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;)V

    .line 89
    return-void

    .line 90
    :pswitch_0
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    .line 92
    const-string v1, "KnoxVpnEngineService"

    .line 94
    if-eqz v0, :cond_0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    const-string v3, "The pac configuration is being added for the profile, update AMS"

    .line 100
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$profileName:Ljava/lang/String;

    .line 105
    invoke-static {v2, v3, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 110
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAMSInstance()Lcom/android/server/am/ActivityManagerService;

    .line 113
    move-result-object v2

    .line 114
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$uidList:Ljava/util/HashMap;

    .line 116
    iget v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$vendorUid:I

    .line 118
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$profileProxyInfo:Landroid/net/ProxyInfo;

    .line 120
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$exemptedUidList:Ljava/util/HashSet;

    .line 122
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateProxyPacConfigurationForKnoxVpn(Ljava/util/HashMap;ILandroid/net/ProxyInfo;Ljava/util/HashSet;)V

    .line 125
    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    const-string v2, "The pac configuration is being added for the profile, send pac broadcast "

    .line 131
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$profileName:Ljava/lang/String;

    .line 136
    invoke-static {v0, v2, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 141
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 144
    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$uidList:Ljava/util/HashMap;

    .line 147
    iget v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$vendorUid:I

    .line 149
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$exemptedUidList:Ljava/util/HashSet;

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->sendProxyConfigBroadcast(ILjava/util/HashMap;Ljava/util/HashSet;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 159
    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$action:I

    .line 161
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$uidList:Ljava/util/HashMap;

    .line 163
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$exemptedUidList:Ljava/util/HashSet;

    .line 165
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkExistsEmailPackageInProfiles(ILjava/util/HashMap;Ljava/util/HashSet;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 170
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$profileName:Ljava/lang/String;

    .line 172
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$uidList:Ljava/util/HashMap;

    .line 174
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;->val$exemptedUidList:Ljava/util/HashSet;

    .line 176
    invoke-static {v0, v1, v2, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mkillRunningProcessToApplyProxy(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;)V

    .line 179
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
