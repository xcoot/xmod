.class public final Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;
.super Ljava/lang/Record;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "userId",
        "subtypeMap",
        "inputMethodMap"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Lcom/android/server/inputmethod/AdditionalSubtypeMap;,
        Lcom/android/server/inputmethod/InputMethodMap;
    }
.end annotation


# instance fields
.field public final inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

.field public final subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

.field public final userId:I


# direct methods
.method public constructor <init>(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->userId:I

    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-custom {p0, p1}, call_site_3("equals", (Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;Ljava/lang/Object;)Z, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;, "userId;subtypeMap;inputMethodMap", instance-get@Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->userId:I, instance-get@Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;, instance-get@Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-custom {p0}, call_site_4("hashCode", (Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;)I, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;, "userId;subtypeMap;inputMethodMap", instance-get@Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->userId:I, instance-get@Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;, instance-get@Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-custom {p0}, call_site_5("toString", (Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;)Ljava/lang/String;, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;, "userId;subtypeMap;inputMethodMap", instance-get@Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->userId:I, instance-get@Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->subtypeMap:Lcom/android/server/inputmethod/AdditionalSubtypeMap;, instance-get@Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;->inputMethodMap:Lcom/android/server/inputmethod/InputMethodMap;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
