.class public final Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;
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
        "tag",
        "payloads"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        Ljava/util/List;
    }
.end annotation


# instance fields
.field public final payloads:Ljava/util/List;

.field public final tag:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;->tag:I

    .line 6
    iput-object p2, p0, Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;->payloads:Ljava/util/List;

    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-custom {p0, p1}, call_site_6("equals", (Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;Ljava/lang/Object;)Z, Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;, "tag;payloads", instance-get@Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;->tag:I, instance-get@Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;->payloads:Ljava/util/List;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-custom {p0}, call_site_7("hashCode", (Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;)I, Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;, "tag;payloads", instance-get@Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;->tag:I, instance-get@Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;->payloads:Ljava/util/List;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "SecurityLogEvent{tag="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;->tag:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", payloads="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$SecurityLogEvent;->payloads:Ljava/util/List;

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo p0, "}"

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
