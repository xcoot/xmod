.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;

.field public final synthetic f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

.field public final synthetic f$10:Lcom/android/server/VcnManagementService;

.field public final synthetic f$11:Lcom/android/server/net/UrspService;

.field public final synthetic f$12:Lcom/android/server/HsumBootUserInitializer;

.field public final synthetic f$13:Landroid/os/IBinder;

.field public final synthetic f$14:Lcom/samsung/accessory/manager/SAccessoryManager;

.field public final synthetic f$16:Lcom/android/server/CountryDetectorService;

.field public final synthetic f$17:Lcom/android/server/timedetector/NetworkTimeUpdateService;

.field public final synthetic f$18:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$19:Lcom/android/server/TelephonyRegistry;

.field public final synthetic f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

.field public final synthetic f$20:Lcom/android/server/media/MediaRouterService;

.field public final synthetic f$21:Lcom/android/server/MmsServiceBroker;

.field public final synthetic f$22:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Landroid/net/ConnectivityManager;

.field public final synthetic f$7:Lcom/android/server/net/NetworkManagementService;

.field public final synthetic f$8:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final synthetic f$9:Lcom/android/server/VpnManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/net/UrspService;Lcom/android/server/HsumBootUserInitializer;Landroid/os/IBinder;Lcom/samsung/accessory/manager/SAccessoryManager;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Z)V
    .locals 2

    .line 1
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/SystemServer;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    move v1, p4

    iput-boolean v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$3:Z

    move-object v1, p5

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$4:Landroid/content/Context;

    move v1, p6

    iput-boolean v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$5:Z

    move-object v1, p7

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$6:Landroid/net/ConnectivityManager;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$7:Lcom/android/server/net/NetworkManagementService;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$8:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$9:Lcom/android/server/VpnManagerService;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$10:Lcom/android/server/VcnManagementService;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$11:Lcom/android/server/net/UrspService;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$12:Lcom/android/server/HsumBootUserInitializer;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$13:Landroid/os/IBinder;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$14:Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$16:Lcom/android/server/CountryDetectorService;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$17:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$18:Lcom/android/server/input/InputManagerService;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$19:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$20:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$21:Lcom/android/server/MmsServiceBroker;

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$22:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/SystemServer;

    .line 5
    iget-object v2, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 7
    iget-object v3, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 9
    iget-boolean v4, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$3:Z

    .line 11
    iget-object v5, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$4:Landroid/content/Context;

    .line 13
    iget-boolean v6, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$5:Z

    .line 15
    iget-object v7, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$6:Landroid/net/ConnectivityManager;

    .line 17
    iget-object v8, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$7:Lcom/android/server/net/NetworkManagementService;

    .line 19
    iget-object v9, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$8:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 21
    iget-object v10, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$9:Lcom/android/server/VpnManagerService;

    .line 23
    iget-object v11, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$10:Lcom/android/server/VcnManagementService;

    .line 25
    iget-object v12, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$11:Lcom/android/server/net/UrspService;

    .line 27
    iget-object v13, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$12:Lcom/android/server/HsumBootUserInitializer;

    .line 29
    iget-object v14, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$13:Landroid/os/IBinder;

    .line 31
    iget-object v15, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$14:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 33
    move-object/from16 v23, v1

    .line 35
    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$16:Lcom/android/server/CountryDetectorService;

    .line 37
    move-object/from16 v16, v1

    .line 39
    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$17:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 41
    move-object/from16 v17, v1

    .line 43
    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$18:Lcom/android/server/input/InputManagerService;

    .line 45
    move-object/from16 v18, v1

    .line 47
    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$19:Lcom/android/server/TelephonyRegistry;

    .line 49
    move-object/from16 v19, v1

    .line 51
    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$20:Lcom/android/server/media/MediaRouterService;

    .line 53
    move-object/from16 v20, v1

    .line 55
    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$21:Lcom/android/server/MmsServiceBroker;

    .line 57
    move-object/from16 v21, v1

    .line 59
    iget-boolean v0, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$22:Z

    .line 61
    move/from16 v22, v0

    .line 63
    move-object/from16 v1, v23

    .line 65
    invoke-static/range {v1 .. v22}, Lcom/android/server/SystemServer;->$r8$lambda$Djmghhk0H4gEPRWdl1V39kc2N1M(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/net/UrspService;Lcom/android/server/HsumBootUserInitializer;Landroid/os/IBinder;Lcom/samsung/accessory/manager/SAccessoryManager;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Z)V

    .line 68
    return-void
.end method
