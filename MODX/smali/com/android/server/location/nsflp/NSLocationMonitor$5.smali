.class public final Lcom/android/server/location/nsflp/NSLocationMonitor$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 6
    return-void
.end method


# virtual methods
.method public final onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x36

    .line 9
    if-ne v0, v1, :cond_d

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDeviceActivityDetectorContext()Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->getActivity()I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->getResult()I

    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 25
    iget-object v2, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 27
    sget-object v3, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NEW:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 29
    if-ne v2, v3, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->getDuration()I

    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, -0x1

    .line 37
    :goto_0
    const-string/jumbo v2, "onSemContextChanged, activity : "

    .line 40
    const-string v4, " result : "

    .line 42
    const-string v5, " movement : "

    .line 44
    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object v2

    .line 48
    const-string v4, "NSLocationMonitor"

    .line 50
    invoke-static {v2, p1, v4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 55
    iget-object v5, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 57
    sget-object v6, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 59
    const/4 v7, 0x5

    .line 60
    sget-object v8, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->OLD:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 62
    const/4 v9, 0x4

    .line 63
    if-ne v5, v6, :cond_3

    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    if-ne v1, v9, :cond_1

    .line 70
    const-string p0, "Support device_activity_detector old algorithm"

    .line 72
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object v8, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    if-ne v1, v7, :cond_2

    .line 80
    const-string p0, "Support device_activity_detector new algorithm"

    .line 82
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object v3, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 87
    :goto_1
    iget-object p0, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 89
    new-instance p1, Landroid/os/Bundle;

    .line 91
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string/jumbo v0, "type"

    .line 97
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 100
    move-result p0

    .line 101
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    iget-object p0, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 106
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->SUPPORT_ALGORITHM_TYPE:Landroid/location/LocationConstants$STATE_TYPE;

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    const-string p0, "Not support device_activity_detector algorithm"

    .line 114
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-object v6, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 119
    sget-object p0, Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;

    .line 121
    invoke-virtual {v2, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->disableDeviceActivity(Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;)V

    .line 124
    :goto_2
    return-void

    .line 125
    :cond_3
    if-eq v1, v9, :cond_d

    .line 127
    if-ne v1, v7, :cond_4

    .line 129
    goto :goto_3

    .line 130
    :cond_4
    const/4 v6, 0x3

    .line 131
    if-ne v1, v6, :cond_5

    .line 133
    const-string p1, "SENSOR OUT"

    .line 135
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 140
    sget-object p1, Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;->SENSOR_OUT:Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->disableDeviceActivity(Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;)V

    .line 145
    return-void

    .line 146
    :cond_5
    if-ne v5, v3, :cond_6

    .line 148
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    new-instance p0, Landroid/os/Bundle;

    .line 153
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 156
    const-string v3, "activity"

    .line 158
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string/jumbo v0, "result"

    .line 164
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string/jumbo v0, "movement"

    .line 170
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    iget-object p1, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 175
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->MOTION_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 177
    invoke-virtual {p1, v0, p0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 180
    goto :goto_3

    .line 181
    :cond_6
    if-ne v5, v8, :cond_c

    .line 183
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    const/4 p0, 0x0

    .line 187
    const/4 p1, 0x1

    .line 188
    if-ne v0, p1, :cond_a

    .line 190
    if-ne v1, p1, :cond_8

    .line 192
    iget-boolean p0, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    .line 194
    if-nez p0, :cond_7

    .line 196
    invoke-virtual {v2, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendStationaryInfo(Z)V

    .line 199
    :cond_7
    iput-boolean p1, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    .line 201
    goto :goto_3

    .line 202
    :cond_8
    const/4 p1, 0x2

    .line 203
    if-ne v1, p1, :cond_d

    .line 205
    iget-boolean p1, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    .line 207
    if-eqz p1, :cond_9

    .line 209
    invoke-virtual {v2, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendStationaryInfo(Z)V

    .line 212
    :cond_9
    iput-boolean p0, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    .line 214
    goto :goto_3

    .line 215
    :cond_a
    if-ne v1, p1, :cond_d

    .line 217
    iget-boolean p1, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    .line 219
    if-eqz p1, :cond_b

    .line 221
    invoke-virtual {v2, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendStationaryInfo(Z)V

    .line 224
    :cond_b
    iput-boolean p0, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    .line 226
    goto :goto_3

    .line 227
    :cond_c
    const-string/jumbo p0, "onSemContextChanged, algorithm is not supported"

    .line 230
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    nop

    .line 234
    :cond_d
    :goto_3
    return-void
.end method
