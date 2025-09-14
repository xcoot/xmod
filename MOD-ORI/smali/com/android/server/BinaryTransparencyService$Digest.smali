.class public final Lcom/android/server/BinaryTransparencyService$Digest;
.super Ljava/lang/Record;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "algorithm",
        "value"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        [B
    }
.end annotation


# instance fields
.field public final algorithm:I

.field public final value:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/BinaryTransparencyService$Digest;->algorithm:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/BinaryTransparencyService$Digest;->value:[B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-custom {p0, p1}, call_site_0("equals", (Lcom/android/server/BinaryTransparencyService$Digest;Ljava/lang/Object;)Z, Lcom/android/server/BinaryTransparencyService$Digest;, "algorithm;value", instance-get@Lcom/android/server/BinaryTransparencyService$Digest;->algorithm:I, instance-get@Lcom/android/server/BinaryTransparencyService$Digest;->value:[B)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

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
    invoke-custom {p0}, call_site_1("hashCode", (Lcom/android/server/BinaryTransparencyService$Digest;)I, Lcom/android/server/BinaryTransparencyService$Digest;, "algorithm;value", instance-get@Lcom/android/server/BinaryTransparencyService$Digest;->algorithm:I, instance-get@Lcom/android/server/BinaryTransparencyService$Digest;->value:[B)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

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
    invoke-custom {p0}, call_site_2("toString", (Lcom/android/server/BinaryTransparencyService$Digest;)Ljava/lang/String;, Lcom/android/server/BinaryTransparencyService$Digest;, "algorithm;value", instance-get@Lcom/android/server/BinaryTransparencyService$Digest;->algorithm:I, instance-get@Lcom/android/server/BinaryTransparencyService$Digest;->value:[B)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
