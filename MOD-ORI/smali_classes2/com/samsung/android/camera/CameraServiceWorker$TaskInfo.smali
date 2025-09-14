.class public final Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;
.super Ljava/lang/Record;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "frontTaskId",
        "isResizable",
        "isFixedOrientationLandscape",
        "isFixedOrientationPortrait",
        "displayId",
        "userId"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Z,
        Z,
        Z,
        I,
        I
    }
.end annotation


# instance fields
.field public final displayId:I

.field public final frontTaskId:I

.field public final isFixedOrientationLandscape:Z

.field public final isFixedOrientationPortrait:Z

.field public final isResizable:Z

.field public final userId:I


# direct methods
.method public constructor <init>(IIIZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->frontTaskId:I

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isResizable:Z

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationLandscape:Z

    .line 9
    .line 10
    iput-boolean p6, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationPortrait:Z

    .line 11
    .line 12
    iput p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    .line 13
    .line 14
    iput p3, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->userId:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-custom {p0, p1}, call_site_6("equals", (Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;Ljava/lang/Object;)Z, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;, "frontTaskId;isResizable;isFixedOrientationLandscape;isFixedOrientationPortrait;displayId;userId", instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->frontTaskId:I, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isResizable:Z, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationLandscape:Z, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationPortrait:Z, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->userId:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-custom {p0}, call_site_7("hashCode", (Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;)I, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;, "frontTaskId;isResizable;isFixedOrientationLandscape;isFixedOrientationPortrait;displayId;userId", instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->frontTaskId:I, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isResizable:Z, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationLandscape:Z, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationPortrait:Z, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->userId:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-custom {p0}, call_site_8("toString", (Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;)Ljava/lang/String;, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;, "frontTaskId;isResizable;isFixedOrientationLandscape;isFixedOrientationPortrait;displayId;userId", instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->frontTaskId:I, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isResizable:Z, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationLandscape:Z, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationPortrait:Z, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I, instance-get@Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->userId:I)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
