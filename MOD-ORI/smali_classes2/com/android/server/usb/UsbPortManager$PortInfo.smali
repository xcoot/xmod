.class public final Lcom/android/server/usb/UsbPortManager$PortInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCanChangeDataRole:Z

.field public mCanChangeMode:Z

.field public mCanChangePowerRole:Z

.field public mComplianceWarningChange:I

.field public mConnectedAtMillis:J

.field public mDisplayPortAltModeChange:I

.field public mDisposition:I

.field public mLastConnectDurationMillis:J

.field public final mUsbPort:Landroid/hardware/usb/UsbPort;

.field public mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZZI)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v10, Landroid/hardware/usb/UsbPort;

    .line 6
    .line 7
    move-object v1, v10

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move v4, p3

    .line 11
    move v5, p4

    .line 12
    move/from16 v6, p5

    .line 13
    .line 14
    move/from16 v7, p6

    .line 15
    .line 16
    move/from16 v8, p7

    .line 17
    .line 18
    move/from16 v9, p8

    .line 19
    .line 20
    invoke-direct/range {v1 .. v9}, Landroid/hardware/usb/UsbPort;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZZI)V

    .line 21
    .line 22
    .line 23
    iput-object v10, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    .line 27
    .line 28
    iput v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 9

    .line 1
    const-string/jumbo v1, "usb_ports"

    .line 2
    .line 3
    .line 4
    const-wide v2, 0x20b00000002L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v7

    .line 13
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 14
    .line 15
    const-string/jumbo v2, "port"

    .line 16
    .line 17
    .line 18
    const-wide v3, 0x10b00000001L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/internal/usb/DumpUtils;->writePort(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPort;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 27
    .line 28
    const-string/jumbo v2, "status"

    .line 29
    .line 30
    .line 31
    const-wide v3, 0x10b00000002L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/internal/usb/DumpUtils;->writePortStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPortStatus;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 40
    .line 41
    const-string v2, "can_change_mode"

    .line 42
    .line 43
    const-wide v3, 0x10800000003L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 52
    .line 53
    const-string v2, "can_change_power_role"

    .line 54
    .line 55
    const-wide v3, 0x10800000004L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 61
    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 64
    .line 65
    const-string v2, "can_change_data_role"

    .line 66
    .line 67
    const-wide v3, 0x10800000005L

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 73
    .line 74
    .line 75
    iget-wide v5, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 76
    .line 77
    const-string v2, "connected_at_millis"

    .line 78
    .line 79
    const-wide v3, 0x10300000006L

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    move-object v1, p1

    .line 85
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 86
    .line 87
    .line 88
    iget-wide v4, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 89
    .line 90
    const-string v1, "last_connect_duration_millis"

    .line 91
    .line 92
    const-wide v2, 0x10300000007L

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    move-object v0, p1

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final setStatus(IZIZIZIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v11, p13

    move-object/from16 v13, p15

    .line 1
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v1, :cond_4

    .line 2
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getComplianceWarnings()[I

    move-result-object v1

    invoke-static {v11, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput v15, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    move v1, v15

    goto :goto_0

    .line 4
    :cond_0
    iput v14, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    move v1, v14

    .line 5
    :goto_0
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 6
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getDisplayPortAltModeInfo()Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-result-object v2

    .line 7
    iput v15, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    if-nez v13, :cond_1

    if-eqz v2, :cond_1

    .line 8
    iput v14, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    :goto_1
    move v2, v14

    goto :goto_2

    :cond_1
    if-nez v2, :cond_3

    if-eqz v13, :cond_2

    .line 9
    iput v14, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    goto :goto_1

    :cond_2
    move v2, v15

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v2, v13}, Landroid/hardware/usb/DisplayPortAltModeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    iput v14, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    goto :goto_1

    :goto_2
    move/from16 v3, p2

    goto :goto_3

    :cond_4
    move/from16 v3, p2

    move v1, v15

    move v2, v1

    .line 12
    :goto_3
    iput-boolean v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    move/from16 v3, p4

    .line 13
    iput-boolean v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    move/from16 v3, p6

    .line 14
    iput-boolean v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 15
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v3, :cond_11

    .line 16
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v3

    move/from16 v4, p1

    if-ne v3, v4, :cond_10

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 17
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v3

    move/from16 v5, p3

    if-ne v3, v5, :cond_f

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 18
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v3

    move/from16 v6, p5

    if-ne v3, v6, :cond_e

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 19
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v3

    move/from16 v7, p7

    if-ne v3, v7, :cond_d

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 20
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getContaminantProtectionStatus()I

    move-result v3

    move/from16 v8, p8

    if-ne v3, v8, :cond_c

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 21
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v3

    move/from16 v9, p9

    if-ne v3, v9, :cond_b

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 22
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v3

    move/from16 v10, p10

    if-ne v3, v10, :cond_a

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 23
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v3

    move/from16 v12, p11

    if-ne v3, v12, :cond_9

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 24
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v3

    move/from16 v15, p12

    if-ne v3, v15, :cond_8

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 25
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getPlugState()I

    move-result v3

    move/from16 v14, p14

    if-eq v3, v14, :cond_5

    goto/16 :goto_d

    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 26
    :cond_6
    new-instance v3, Landroid/hardware/usb/UsbPortStatus;

    move-object v1, v3

    move/from16 v2, p1

    move-object v4, v3

    move/from16 v3, p3

    move-object v5, v4

    move/from16 v4, p5

    move-object v6, v5

    move/from16 v5, p7

    move-object v7, v6

    move/from16 v6, p8

    move-object v8, v7

    move/from16 v7, p9

    move-object v9, v8

    move/from16 v8, p10

    move-object v10, v9

    move/from16 v9, p11

    move-object v12, v10

    move/from16 v10, p12

    move-object/from16 v11, p13

    move-object v15, v12

    move/from16 v12, p14

    move-object/from16 v13, p15

    invoke-direct/range {v1 .. v13}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    iput-object v15, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_f

    :cond_8
    :goto_4
    move/from16 v14, p14

    goto :goto_d

    :cond_9
    :goto_5
    move/from16 v15, p12

    goto :goto_4

    :cond_a
    :goto_6
    move/from16 v12, p11

    goto :goto_5

    :cond_b
    :goto_7
    move/from16 v10, p10

    goto :goto_6

    :cond_c
    :goto_8
    move/from16 v9, p9

    goto :goto_7

    :cond_d
    :goto_9
    move/from16 v8, p8

    goto :goto_8

    :cond_e
    :goto_a
    move/from16 v7, p7

    goto :goto_9

    :cond_f
    :goto_b
    move/from16 v6, p5

    goto :goto_a

    :cond_10
    :goto_c
    move/from16 v5, p3

    goto :goto_b

    :cond_11
    move/from16 v4, p1

    goto :goto_c

    .line 27
    :goto_d
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-nez v1, :cond_12

    array-length v1, v11

    if-lez v1, :cond_12

    const/4 v3, 0x1

    .line 28
    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    goto :goto_e

    :cond_12
    const/4 v3, 0x1

    .line 29
    :goto_e
    new-instance v2, Landroid/hardware/usb/UsbPortStatus;

    move-object v1, v2

    move-object v14, v2

    move/from16 v2, p1

    move/from16 v16, v3

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move-object/from16 v11, p13

    move/from16 v12, p14

    move-object/from16 v13, p15

    invoke-direct/range {v1 .. v13}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    iput-object v14, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    move/from16 v14, v16

    .line 30
    :goto_f
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_13

    iget-wide v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_13

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 32
    iput-wide v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    goto :goto_10

    .line 33
    :cond_13
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    if-nez v1, :cond_14

    iget-wide v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_14

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 35
    iput-wide v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    :cond_14
    :goto_10
    return v14
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "port="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", status="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", canChangeMode="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", canChangePowerRole="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", canChangeDataRole="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", connectedAtMillis="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", lastConnectDurationMillis="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method
