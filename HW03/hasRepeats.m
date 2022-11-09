function [duplicate] = hasRepeats(vec)
    vec2 = sort(vec);
    vec3 = vec2(2:end);
    vec3(end+1) = vec2(1);
    g = vec2 - vec3;
    duplicate = any(g == 0);
end