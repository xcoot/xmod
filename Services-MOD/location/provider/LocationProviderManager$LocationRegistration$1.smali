.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public mPreviousLocation:Landroid/location/Location;

.field public final synthetic this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 6
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    .line 12
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    check-cast p1, Landroid/location/Location;

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_3

    .line 14
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 17
    move-result-wide v2

    .line 18
    const-wide v4, -0x3fa9800000000000L    # -90.0

    .line 23
    cmpg-double v0, v2, v4

    .line 25
    if-ltz v0, :cond_3

    .line 27
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 30
    move-result-wide v2

    .line 31
    const-wide v4, 0x4056800000000000L    # 90.0

    .line 36
    cmpl-double v0, v2, v4

    .line 38
    if-gtz v0, :cond_3

    .line 40
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 43
    move-result-wide v2

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 50
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 53
    move-result-wide v2

    .line 54
    const-wide v4, -0x3f99800000000000L    # -180.0

    .line 59
    cmpg-double v0, v2, v4

    .line 61
    if-ltz v0, :cond_3

    .line 63
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 66
    move-result-wide v2

    .line 67
    const-wide v4, 0x4066800000000000L    # 180.0

    .line 72
    cmpl-double v0, v2, v4

    .line 74
    if-lez v0, :cond_0

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    .line 79
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    .line 84
    move-result-wide v2

    .line 85
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    .line 87
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    .line 90
    move-result-wide v4

    .line 91
    sub-long/2addr v2, v4

    .line 92
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 94
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    .line 101
    move-result-wide v4

    .line 102
    long-to-float v0, v4

    .line 103
    const v4, 0x3dcccccd    # 0.1f

    .line 106
    mul-float/2addr v0, v4

    .line 107
    float-to-long v4, v0

    .line 108
    const-wide/16 v6, 0x7530

    .line 110
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 113
    move-result-wide v4

    .line 114
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 116
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    .line 123
    move-result-wide v6

    .line 124
    sub-long/2addr v6, v4

    .line 125
    cmp-long v0, v2, v6

    .line 127
    if-gez v0, :cond_1

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 132
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    .line 139
    move-result v0

    .line 140
    float-to-double v2, v0

    .line 141
    const-wide/16 v4, 0x0

    .line 143
    cmpl-double v0, v2, v4

    .line 145
    if-lez v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    .line 149
    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    .line 152
    move-result v0

    .line 153
    float-to-double v4, v0

    .line 154
    cmpg-double v0, v4, v2

    .line 156
    if-gtz v0, :cond_2

    .line 158
    goto :goto_1

    .line 159
    :cond_2
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->mPreviousLocation:Landroid/location/Location;

    .line 161
    const/4 v1, 0x1

    .line 162
    goto :goto_1

    .line 163
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 170
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 172
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v0, " provider registration "

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 184
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 186
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    const-string p0, " dropped delivery - invalid latitude or longitude."

    .line 191
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object p0

    .line 198
    const-string p1, "LocationManagerService"

    .line 200
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_1
    return v1
.end method
