.class public final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final brightness:F

.field public final brightnessSpline:Landroid/util/Spline;

.field public final isDefaultBrightnessConfig:Z

.field public final isUserSetBrightness:Z

.field public final powerBrightnessFactor:F

.field public final timestamp:J

.field public final uniqueDisplayId:Ljava/lang/String;


# direct methods
.method public constructor <init>(FFZZJLjava/lang/String;Landroid/util/Spline;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->brightness:F

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->powerBrightnessFactor:F

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->isUserSetBrightness:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    .line 11
    .line 12
    iput-wide p5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->timestamp:J

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->brightnessSpline:Landroid/util/Spline;

    .line 17
    .line 18
    return-void
.end method
